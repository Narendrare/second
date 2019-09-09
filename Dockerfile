FROM tomcat:8.0
COPY /var/lib/jenkins/workspace/jenkinspipeline/target/Helloworld-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
