FROM tomcat:jdk8-adoptopenjdk-openj9
WORKDIR /usr/local/tomcat
COPY retwisj/target/retwisj-LATEST.war /usr/local/tomcat/webapps/retwisj.war
EXPOSE 8080
