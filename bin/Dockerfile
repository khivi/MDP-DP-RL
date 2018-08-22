FROM python:3.7-slim

COPY resources/requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY resources/bashrc /root/.bashrc

RUN mkdir /work

WORKDIR /work
