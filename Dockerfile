FROM tomcat:8.0
chmod ugx=rwx /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar
ADD /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar /usr/local/tomcat/webapps/
