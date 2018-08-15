FROM alpine:3.8

RUN apk add --no-cache python py-pip && pip install flask

EXPOSE 5000

WORKDIR /srv/app
ENV FLASK_APP=main.py

VOLUME /srv/data

# We expect the app to be at /srv/app/main.py
CMD ["flask", "run", "--host=0.0.0.0"]
