# we are extending everything from tomcat:8.0 image ...
FROM tomcat
MAINTAINER kasturirajeevdevops@gmail.com
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY opt/tomcat/webapps/mvn-hello-world.war /usr/local/tomcat/webapps/
