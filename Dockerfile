ARG BUILD_IMAGE=eclipse-temurin:17-jdk-jammy
ARG RUNTIME_IMAGE=eclipse-temurin:17-jre-jammy

# Build stage
FROM ${BUILD_IMAGE} as builder
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve-plugins dependency:go-offline -B
COPY src ./src
RUN ./mvnw clean install

# Run stage
FROM ${RUNTIME_IMAGE} as runner
WORKDIR /app
EXPOSE 8001
COPY --from=builder /app/target/*.jar /app/*.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/*.jar" ]