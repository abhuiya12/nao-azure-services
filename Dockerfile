FROM openjdk:11
VOLUME /tmp
EXPOSE 5000
ADD target/*.jar nao-azure-services.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /nao-azure-services.jar" ]