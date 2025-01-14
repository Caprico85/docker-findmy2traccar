FROM python:alpine

USER root

RUN \
    apk update && \
    apk add --no-cache git && \
    git clone https://github.com/biemster/FindMy.git /app && \
    pip install --no-cache-dir requests cryptography pbkdf2 srp pycryptodome && \
    wget https://raw.githubusercontent.com/ct-Open-Source/findmy2traccar/refs/heads/main/findmy2traccar.py -O /app/findmy2traccar.py && \
    sed -i 's/localhost:5055/anisette:5055/g' /app/findmy2traccar.py && \
    sed -i 's/localhost:6969/anisette:6969/g' /app//pypush_gsa_icloud.py

WORKDIR /app

ENTRYPOINT ["python", "/app/findmy2traccar.py"]

