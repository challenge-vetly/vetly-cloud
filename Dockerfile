FROM gradle:8.14-jdk21 AS build

LABEL maintainer="Vetly Squad"
LABEL version="1.0"
LABEL description="Vetly API - Java Spring Boot"

ARG APP_NAME=vetly-java

WORKDIR /app

COPY build.gradle settings.gradle ./
COPY gradlew ./
COPY gradle ./gradle

RUN gradle dependencies --no-daemon || true

COPY src ./src

RUN gradle clean bootJar -x test --no-daemon

FROM eclipse-temurin:21-jre-jammy

LABEL application="vetly-java"

ARG APP_NAME=vetly-java

WORKDIR /app

ENV APP_NAME=${APP_NAME}
ENV APP_PORT=8080

COPY --from=build /app/build/libs/*.jar app.jar

VOLUME /app/logs

RUN useradd -m vetlyuser

RUN chown -R vetlyuser /app

USER vetlyuser

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]