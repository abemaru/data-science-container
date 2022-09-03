FROM python:3.9-buster

RUN apt-get update && apt-get install -y \
    wget libblas3 liblapack3 liblapack-dev libblas-dev libatlas-base-dev \
    gfortran


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

