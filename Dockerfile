FROM ubuntu:18.04
RUN apt-get update -y && \  
    apt-get install -y python3-pip python3-dev

WORKDIR /dedupeapp

COPY ./flaskapp/requirements.txt requirements.txt

RUN pip3 install -r ./requirements.txt

COPY ./flaskapp /dedupeapp

RUN apt-get install nginx -y

RUN apt-get install -y curl

CMD service nginx restart && python3 app.py
