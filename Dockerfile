FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/ProductServiceMS-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8802
ENV JAVA_OPTS=""
RUN sh -c "touch ProductServiceMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "ProductServiceMS-0.0.1-SNAPSHOT.jar" ]
