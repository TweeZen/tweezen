#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY retwisj /home/app
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/retwisj-0.1-SNAPSHOT.war /usr/local/lib/demo.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.war"]