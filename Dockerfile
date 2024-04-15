FROM openjdk:17-alpine
RUN apk update && apk add --no-cache mysql-client
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]