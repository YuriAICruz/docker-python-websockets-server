FROM ubuntu

MAINTAINER Yuri Cruz

EXPOSE 8000

USER root

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN apt-get install -y gunicorn
RUN apt-get install -y git

RUN git clone https://github.com/YuriAICruz/python-websockets-server.git /var/python-websockets-server

RUN chmod -R +x /var/python-websockets-server/

RUN pip install -r /var/python-websockets-server/requirements.txt

RUN chmod -R +x /var/python-websockets-server/run.sh

WORKDIR /var/python-websockets-server

RUN chmod -R +x ./

ENTRYPOINT ["/var/python-websockets-server/run.sh"] 