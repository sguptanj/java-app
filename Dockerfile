FROM registry.buildpiper.in/ot-light:8.5-flat

LABEL maintainer="Siddharth Gupta"
LABEL BASE_IMAGE="registry.buildpiper.in/ot-light:8.5-flat"
LABEL JAVA_VERSION="11"

RUN microdnf install --nodocs java-11-openjdk-headless && microdnf clean all

WORKDIR /work/

COPY target/*.jar /work/application.jar

EXPOSE 8080

CMD ["java", "-jar", "application.jar"]
