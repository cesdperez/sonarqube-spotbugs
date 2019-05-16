FROM sonarqube:7.7-community
MAINTAINER Cesar Daniel Perez "cesdperez@gmail.com"

WORKDIR ${SONARQUBE_HOME}/extensions/plugins/
RUN wget https://github.com/spotbugs/sonar-findbugs/releases/download/3.11.0/sonar-findbugs-plugin-3.11.0.jar

WORKDIR ${SONARQUBE_HOME}