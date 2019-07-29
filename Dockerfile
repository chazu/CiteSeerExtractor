FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install python-pip cpanminus openjdk-11-jre-headless -y
RUN pip install web.py xmltodict python-magic requests

RUN mkdir /app

COPY ./ /app

WORKDIR /app/src

EXPOSE 3000
CMD python service.py 3000


