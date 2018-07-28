FROM python:alpine 

RUN pip install flask

VOLUME /srv/

EXPOSE 5000

WORKDIR /srv/

ENV FLASK_APP=demo/web.py

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]