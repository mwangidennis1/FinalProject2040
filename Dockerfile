FROM openjdk:17-jdk
LABEL authors="Mwangi"

#workdir
WORKDIR /myapp

COPY . .

RUN ./mvnw package

EXPOSE 5000
CMD [ "java", "-jar", "./target/FinalProject-0.0.1-SNAPSHOT.jar"]