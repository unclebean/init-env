FROM jenkins/jenkins:lts

# COPY plugins.txt /usr/share/jenkins/plugins.txt
# RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get -y update
RUN apt-get install -y ansible

USER jenkins
VOLUME ["/var/jenkins_home"]

EXPOSE 8080
EXPOSE 50000