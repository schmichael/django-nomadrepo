FROM python:3.9-slim-buster
MAINTAINER schmichael "mschurter@hashicorp.com"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y build-essential libpq-dev \
    python-dev postgresql-client

RUN python3 -m venv /opt/venv

COPY requirements.txt .
RUN . /opt/venv/bin/activate && \
    pip install -r requirements.txt

COPY nomadrepo nomadrepo
CMD . /opt/venv/bin/activate && \
    exec python nomadrepo/manage.py runserver
