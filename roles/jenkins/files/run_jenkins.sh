#!/bin/bash
docker run -u 1000 -v /var/jenkins/jenkins_home:/var/jenkins_home -d -p 8080:8080 -p 50000:50000 --restart unless-stopped --name jenkins newgate-jenkins
