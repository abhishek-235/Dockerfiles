FROM ubuntu:18.04 as base

RUN apt-get update --fix-missing

RUN apt-get install -y wget gnupg2 gnupg gnupg1
RUN apt-get install inetutils-ping net-tools curl nano -y

RUN wget  -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -

RUN echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
RUN apt-get install openjdk-11-jre-headless -y

RUN apt-get update \
    && apt-get install jenkins -y

# git will be used in our task so install git
RUN apt-get install git -y

# we are going to launch a docker container from the container in which jenkins is running \
# so install docker in this image, otherwise you may get "docker not found" error
# I have download a debian package of docker so I will use that to install docker

COPY ./docker-ce-cli_18.09.0_3-0_ubuntu-bionic_amd64.deb /

RUN apt-get install libltdl7
RUN dpkg -i docker-ce-cli_18.09.0_3-0_ubuntu-bionic_amd64.deb


EXPOSE 8080

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
