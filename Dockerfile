FROM python:3.8-buster

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install --upgrade pip

RUN pip install -r /requirements.txt

WORKDIR /app

COPY . /app/




