FROM ubuntu:20.04


RUN apt-get update
RUN apt-get install -y libpq-dev 
RUN apt-get install -y python3-dev 
RUN apt-get install -y python3-pip 
RUN apt-get install -y git 
RUN apt-get clean
RUN cd /opt && git clone https://github.com/HariHaran1214/Spider.git
RUN cd /opt/Spider && git pull

RUN python3 -m pip install --upgrade pip

WORKDIR /opt/Spider

EXPOSE 8080
ENTRYPOINT [ "python3" ]
CMD [ "main.py" ]
