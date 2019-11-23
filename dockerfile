FROM tomcat:9.0-jre8-alpine

ADD retwisj/target/retwisj-0.1-SNAPSHOT.war $CATALINA_HOME/webapps/retwisj.war


#COPY --from=MAVEN_TOOL_CHAIN /tmp/retwisj/src/main/resources/log4j.properties $CATALINA_HOME/webapps/retwisj/WEB-INF/classes/
#COPY --from=MAVEN_TOOL_CHAIN /tmp/retwisj/src/main/webapp/tomcat-users.xml $CATALINA_HOME/conf/
#COPY --from=MAVEN_TOOL_CHAIN /tmp/retwisj/src/main/webapp/context.xml $CATALINA_HOME/conf/

EXPOSE 8080

CMD ["catalina.sh", "run"]
