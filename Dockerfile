FROM tomcat:8.0
COPY /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar /usr/local/tomcat/webapps
