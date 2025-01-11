FROM python

USER root

# Tools zur Bildbearbeitung installieren
RUN wget https://raw.githubusercontent.com/ct-Open-Source/findmy2traccar/refs/heads/main/findmy2traccar.py -O /root/findmy2traccar.py

CMD python3 /root/findmy2traccar.py
