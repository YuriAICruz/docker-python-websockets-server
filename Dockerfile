FROM ubuntu
MAINTAINER Yuri Cruz

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN apt-get install -y gunicorn
RUN apt-get install -y git

RUN cd /var/
RUN git clone https://github.com/YuriAICruz/python-websockets-server.git
RUN cd python-websockets-server

CMD ["sh", "/var/python-websockets-server/run.sh"] 