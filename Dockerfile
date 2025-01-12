FROM python:alpine

USER root

RUN \
    apk add --no-cache git
    cd /root/ && \
    git clone https://github.com/biemster/FindMy.git && \
    wget https://raw.githubusercontent.com/ct-Open-Source/findmy2traccar/refs/heads/main/findmy2traccar.py -O /root/FindMy/findmy2traccar.py

CMD python3 /root/FindMy/findmy2traccar.py
