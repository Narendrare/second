FROM tomcat:8.0
RUN cd /var/lib/jenkins/workspace/jenkinspipeline/target/
COPY *.jar /usr/local/tomcat/webapps/
