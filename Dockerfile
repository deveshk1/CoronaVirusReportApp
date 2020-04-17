FROM openjdk:11-jdk
VOLUME /tmp
ADD target/coronavirus-tracker-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]