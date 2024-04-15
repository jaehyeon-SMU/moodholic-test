FROM openjdk:17-alpine
RUN apk update && apk add --no-cache mysql-client

ENV DATABASE_URL jdbc:mysql://121.170.161.69:3307/moodholicdb
ENV APP_ENV production

COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]