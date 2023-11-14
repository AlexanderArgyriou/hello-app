FROM openjdk:17-oracle
ARG JAR_FILE=target/*SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
# What exactly does “-Djava.security.egd=file:/dev/./urandom” do when containerizing a Spring Boot application?
# See https://stackoverflow.com/questions/58853372/what-exactly-does-djava-security-egd-file-dev-urandom-do-when-containerizi
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8082