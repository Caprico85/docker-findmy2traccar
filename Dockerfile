FROM python:alpine

USER root

RUN \
    apk update && \
    apk add --no-cache git && \
    git clone https://github.com/biemster/FindMy.git /app && \
    pip install --no-cache-dir requests cryptography pbkdf2 srp pycryptodome && \
    wget https://raw.githubusercontent.com/ct-Open-Source/findmy2traccar/refs/heads/main/findmy2traccar.py -O /app/findmy2traccar.py

WORKDIR /app

CMD python3 /root/FindMy/findmy2traccar.py
