ARG BUILD_IMAGE=maven:3.8-eclipse-temurin-17
ARG RUNTIME_IMAGE=eclipse-temurin:17-jre-jammy

# Build stage
FROM ${BUILD_IMAGE} as builder
WORKDIR /app
COPY pom.xml ./
RUN mvn dependency:resolve-plugins dependency:go-offline -B
COPY src ./src
RUN mvn clean install

# Run stage
FROM ${RUNTIME_IMAGE} as runner
WORKDIR /app
EXPOSE 8000
COPY --from=builder /app/target/*.jar /app/*.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/*.jar" ]