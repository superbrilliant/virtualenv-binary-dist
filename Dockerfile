FROM python:2.7

RUN virtualenv /venv
RUN virtualenv --relocatable /venv
