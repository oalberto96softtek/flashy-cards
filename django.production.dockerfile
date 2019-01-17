FROM python:3
COPY ./backend/ /usr/src/app
ENV APP_PATH=/usr/src/app
ENV APP_ENV=PRODUCTION
COPY ./django-scripts/. /django-scripts
WORKDIR /django-scripts
RUN pip install -r requirements.production.txt
WORKDIR /django-scripts/
EXPOSE 8000
ENTRYPOINT ["/bin/bash","run.sh"]

