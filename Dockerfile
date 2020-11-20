#sudo docker build -t msfragger:3.1.1 .

FROM centos:centos7
MAINTAINER Du,Yang

RUN mkdir /usr/local/jdk
WORKDIR /usr/local/jdk
ADD jdk-8u111-linux-x64.tar.gz /usr/local/jdk
ENV JAVA_HOME /usr/local/jdk/jdk1.8.0_111
ENV JRE_HOME /usr/local/jdk/jdk1.8.0_111/jre
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /software
COPY MSFragger-3.1.1 /software/
