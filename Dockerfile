FROM python:3.10.6-buster

RUN apt-get update && apt-get install -y wget

ENV POETRY_HOME=/opt/poetry

RUN curl -sSL https://install.python-poetry.org | python3 && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

#RUN poetry --version

COPY . /app
