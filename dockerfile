# Use an official Ubuntu 16.04 as a parent image
###ubuntu###
#FROM ubuntu:18.04
#RUN apt-get update && apt-get install -y \
 #   software-properties-common

#RUN add-apt-repository ppa:deadsnakes/ppa
#RUN apt update
#RUN apt install python3.6
#RUN apt-get install -y zip
#RUN apt-get -y install python3-pip
#RUN apt-get -y install nano
###################################################
####redhat####
FROM redhat/ubi8

RUN yum update -y
RUN yum install -y python3
RUN yum install -y zip
RUN yum install -y python3-pip
RUN yum install -y gcc
RUN yum install -y libevent-devel

#RUN add-apt-repository ppa:deadsnakes/ppa
RUN yum install -y  python3

COPY . .

WORKDIR cloudefender
RUN pip3 install flask
RUN pip3 install urllib3==1.26.6
RUN pip3 install PyJWT

#RUN pip3 install gevent
RUN pip3 install xattr

RUN pip3 install docker
RUN pip3 install requests
RUN pip3 install --upgrade pip
RUN pip3 install psutil
RUN pip3 install -U setuptools
RUN pip3 install -U wheel
RUN pip3 install gevent
RUN pip3 install -U pyinstaller

#CMD bash create_build.sh;bash
CMD bash
