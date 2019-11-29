FROM tomcat:jdk8-adoptopenjdk-openj9

WORKDIR /usr/local/tomcat

COPY retwisj/target/retwisj-0.1-SNAPSHOT.war /usr/local/tomcat/webapps/retwisj.war

EXPOSE 8080

CMD ["catalina.sh", "run"]