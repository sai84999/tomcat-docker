FROM tomcat:8.5.37-jre8
MAINTAINER saikrishna@gmail.com
RUN apt-get update -y
WORKDIR /usr/local/tomcat
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]