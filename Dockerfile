FROM python:3-alpine

RUN pip install flask

VOLUME /srv/

EXPOSE 5000

WORKDIR /srv/app
ENV FLASK_APP=main.py

# We expect the app to be at /srv/app/main.py
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
