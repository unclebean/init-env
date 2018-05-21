FROM jenkins/jenkins:lts

# COPY plugins.txt /usr/share/jenkins/plugins.txt
# RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

USER root

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get -y update
RUN apt-get install -y ansible

ENV BOOT_VERSION=2.7.2
ENV BOOT_INSTALL=/usr/local/bin/
WORKDIR /tmp
RUN mkdir -p $BOOT_INSTALL \
  && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh \
  && echo "Comparing installer checksum..." \
  && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c - \
  && mv boot.sh $BOOT_INSTALL/boot \
  && chmod 0755 $BOOT_INSTALL/boot
ENV PATH=$PATH:$BOOT_INSTAL
ENV BOOT_AS_ROOT=yes
RUN boot

USER jenkins
VOLUME ["/var/jenkins_home"]

ENV JAVA_OPTS="-Xmx640m"
ENV JENKINS_OPTS="--handlerCountStartup=100 --handlerCountMax=300"

EXPOSE 8080
EXPOSE 50000