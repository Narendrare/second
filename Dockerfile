FROM tomcat:8.0
RUN chmod +x /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar
COPY /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar /usr/local/tomcat/webapps/
