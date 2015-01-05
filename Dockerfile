FROM stackbrew/ubuntu:14.04
MAINTAINER Angel Martinez "angelmp.mail@gmail.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.595/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins
ADD http://updates.jenkins-ci.org/download/plugins/selenium/latest/selenium.hpi /jenkins/plugins/selenium.hpi
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
