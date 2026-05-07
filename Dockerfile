FROM eclipse-temurin:11-jre

LABEL maintainer="Ravi Sharma"
LABEL BASE_IMAGE="eclipse-temurin:11-jre"
LABEL JAVA_VERSION="11"

WORKDIR /work/

COPY target/*.jar /work/application.jar

EXPOSE 8080

CMD ["java", "-jar", "application.jar"]
