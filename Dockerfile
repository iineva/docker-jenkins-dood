FROM jenkins:2.0-alpine

USER root

# install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt

# install theme: material-light
COPY org.codefirst.SimpleThemeDecorator.xml $JENKINS_HOME/org.codefirst.SimpleThemeDecorator.xml

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
