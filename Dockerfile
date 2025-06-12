FROM eclipse-temurin:17-jdk-jammy

COPY target/api-gateway.jar /app/api-gateway.jar

WORKDIR /app

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "api-gateway.jar"]
