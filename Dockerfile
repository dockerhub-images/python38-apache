FROM ubuntu:18.04

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install -y apache2 --no-install-recommends; apt-get install -y libapache2-mod-wsgi-py3 --no-install-recommends
RUN apt-get install -y nano; apt-get install -y curl
RUN apt install -y software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt install -y python3.8
RUN apt install -y python3-pip
RUN a2enmod wsgi
RUN a2enmod rewrite
