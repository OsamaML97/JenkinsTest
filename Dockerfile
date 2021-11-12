FROM openjdk:11-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \JAVA_OPTS=""

WORKDIR /app
ADD target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]