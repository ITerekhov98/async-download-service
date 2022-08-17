FROM python:3.8

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y zip

WORKDIR /code/
COPY requirements.txt /code/

RUN pip3 install -r requirements.txt
                                      
COPY . /code/