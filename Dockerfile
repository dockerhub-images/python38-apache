FROM ubuntu:18.04

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install -y apache2 --no-install-recommends; apt-get install -y libapache2-mod-wsgi-py3 --no-install-recommends
RUN apt-get install -y nano; apt-get install -y curl
RUN a2enmod wsgi
RUN a2enmod rewrite
