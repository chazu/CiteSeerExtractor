FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install python-pip cpanminus -y
RUN pip install web.py xmltodict python-magic

RUN mkdir /app

COPY ./ /app

WORKDIR /app

EXPOSE 3000
CMD python src/service.py 3000

