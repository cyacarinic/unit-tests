FROM centos:centos7
MAINTAINER cyacarini@rcp.pe

ENV PYTHONUNBUFFERED 1

RUN yum -y update && yum clean all

RUN yum -y install epel-release && yum clean all
RUN yum -y install postgresql-devel && yum clean all
RUN yum -y install python-devel python-setuptools python-pip && yum clean all
RUN pip install --upgrade pip
RUN yum -y install gcc gcc-c++ && yum clean all
RUN yum -y install supervisor && yum clean all
RUN yum -y reinstall glibc-common  && yum clean all

RUN mkdir /srv/www/
WORKDIR /srv/www/
ADD ./code /srv/www/tests
ADD ./requirements.txt /srv/www/
RUN pip install -r requirements.txt


RUN yum install -y supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80
cmd ["supervisord", "-n"]
