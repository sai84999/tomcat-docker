FROM tomcat:8.5.37-jre8
MAINTAINER saikrishnaganta11@gmail.com
RUN apt-get update
COPY /usr/local/tomcat/
EXPOSE 8080
CMD ["catalina.sh," "run"]