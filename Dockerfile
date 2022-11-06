ARG BUILD_IMAGE=eclipse-temurin:17-jdk-jammy
ARG RUNTIME_IMAGE=eclipse-temurin:17-jre-jammy

# Build stage
FROM ${BUILD_IMAGE} as builder
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
RUN ./mvnw clean install

# Run stage
FROM ${RUNTIME_IMAGE} as runner
WORKDIR /app
EXPOSE 8686
COPY --from=builder /app/target/*.jar /app/*.jar
ENTRYPOINT ["java", "-jar", "/app/*.jar" ]