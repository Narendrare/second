FROM tomcat:8.0
RUN chmod ugo=rwx /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar
ADD /var/lib/jenkins/workspace/jenkinspipeline/target/*.jar /usr/local/tomcat/webapps/
