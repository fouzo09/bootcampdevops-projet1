FROM python:2.7-stretch

LABEL maintainer="DIALLO Mafouz <mafouzdiallo@gmail.com>"

ADD . /

RUN apt-get update -y && apt-get install python-dev python3-dev \
    libsasl2-dev python-dev libldap2-dev libssl-dev python-pip -y \
    && pip install flask flask_httpauth flask_simpleldap python-dotenv

RUN mkdir /data

VOLUME /data

EXPOSE 5000

CMD [ "python", "./student_age.py" ]