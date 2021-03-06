FROM jenkins

USER root
RUN apt-get update && \
apt-get install -y sudo && \
apt-get install  -y npm && \
apt-get install -y apt-transport-https

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
apt-get update && \
apt-get install -y sbt

USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/

