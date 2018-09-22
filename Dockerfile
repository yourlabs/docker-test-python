FROM node:10-alpine

ENV PYTHONIOENCODING UTF-8
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1

RUN apk update && apk --no-cache upgrade && apk --no-cache add python3 py3-psycopg2 bash git
