FROM eclipse-temurin
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

EXPOSE 8686
CMD ["./mvnw", "spring-boot:run"]