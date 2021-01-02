FROM tomcat:8.0
RUN mkdir app
ARG JAR_FILE
COPY /target/${JAR_FILE} /usr/local/tomcat/webapps/testservilet.war