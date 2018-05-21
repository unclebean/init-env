FROM jenkins/jenkins:lts

# COPY plugins.txt /usr/share/jenkins/plugins.txt
# RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root
RUN apt-get update
RUN apt-get install -y ansible

USER jenkins
VOLUME ["/var/jenkins_home"]

EXPOSE 8080
EXPOSE 50000