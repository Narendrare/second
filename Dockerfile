FROM tomcat:8.0
ADD /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar /usr/local/tomcat/webapps/
