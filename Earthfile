VERSION 0.7

ARG --global DATE=(date +%y-%m-%d)
ARG --global DEBIAN_VERSION=slim-bullseye
ARG --global PYTHON_VERSION=3.10

deps:
    FROM python:${PYTHON_VERSION}-${DEBIAN_VERSION}
    ENV PYTHONDONTWRITEBYTECODE 1
    ENV PYTHONUNBUFFERED 1
    RUN mkdir -p /code
    WORKDIR /code
    RUN apt-get update && apt-get install -y \
        ca-certificates \
        curl \
        gnupg
    RUN pip install poetry
    COPY pyproject.toml poetry.lock /code/
    RUN poetry config virtualenvs.create false
    RUN poetry install --only main --no-root --no-interaction

test:
    FROM +deps
    COPY . /code
    RUN pytest

build:
    FROM +deps
    COPY . /code
    RUN poetry build
    SAVE ARTIFACT /code/dist
