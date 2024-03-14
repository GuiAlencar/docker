FROM maven:3.8.6-eclipse-temurin-11-alpine

COPY my-app /app

WORKDIR /app

RUN mvn package

ENTRYPOINT [ "java" ]

CMD ["-cp", "target/my-app-1.0-SNAPSHOT.jar", "com.mycompany.app.App"]

# docker image build -t java:sem-multi-stage .
# docker container run -it --rm --name java java:sem-multi-stage