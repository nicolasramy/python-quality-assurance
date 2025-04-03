FROM python:3.10-slim

LABEL mantainer="Nicolas Ramy <nicolas.ramy@darkelda.com>"

USER root

ENV PYTHONDONTWRITEBYTECODE=1

ENV BLACK_VERSION=25.1.0
ENV FLAKE8_VERSION=6.1.0
ENV FLAKE8_DJANGO_VERSION=1.4

# system update
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install black==${BLACK_VERSION} \
    flake8==${FLAKE8_VERSION} \
    flake8-django==${FLAKE8_DJANGO_VERSION}

RUN mkdir /app
COPY start.sh /start.sh
WORKDIR /app

VOLUME ["/app"]


CMD ["bash", "/start.sh"]
