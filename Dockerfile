FROM node:10-alpine

ENV PYTHONIOENCODING UTF-8
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1

RUN apk update && apk --no-cache upgrade && apk --no-cache add --virtual build-deps python3 py3-psycopg2 bash git diffutils py3-cffi python3-dev gcc musl-dev openssl-dev make
RUN ln -sfn /usr/bin/pip3 /usr/bin/pip
RUN ln -sfn /usr/bin/python3 /usr/bin/python
RUN pip --no-cache install --upgrade pip
ADD requirements.txt /requirements.txt
RUN pip --no-cache install --upgrade -r /requirements.txt
