From python:3.7-alpine
MAINTAINER Joseph

# run python in unbuffered mode

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

# create user 'user' for proj
RUN adduser -D user
USER user