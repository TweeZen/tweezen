FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY retwisj /tmp/retwisj/
WORKDIR /tmp/
RUN mvn package

FROM tomcat:9.0-jre8-alpine
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/retwisj-0.1-SNAPSHOT.war $CATALINA_HOME/webapps/retwisj.war
COPY --from=MAVEN_TOOL_CHAIN /tmp/retwisj/src/main/resources/log4j.properties $CATALINA_HOME/webapps/retwisj/WEB-INF/classes/

EXPOSE 8080

CMD ["catalina.sh", "run"]
