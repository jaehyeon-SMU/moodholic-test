FROM openjdk:17-alpine
RUN apt-get update && apt-get install -y bash
COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]