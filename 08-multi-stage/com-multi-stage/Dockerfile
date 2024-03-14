FROM maven:3.8.6-eclipse-temurin-11-alpine AS build

COPY my-app /app

WORKDIR /app

RUN mvn package

FROM eclipse-temurin:11-jdk-alpine

WORKDIR /app

COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java"]

CMD ["-cp", "app.jar", "com.mycompany.app.App"]

# docker image build -t java:com-multi-stage .
# docker container run -it --rm --name java2 java:com-multi-stage