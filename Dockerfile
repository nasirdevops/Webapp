# we are extending everything from tomcat
FROM tomcat:8.5.16-jre8-alpine

MAINTAINER naseer "naseerdevops@gmail.com"

CMD ["catalina.sh", "run"]


