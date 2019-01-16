FROM node:8.15.0-jessie
COPY ./frontend /usr/src/app
COPY ./node-scripts/run.sh /usr/src/app/
WORKDIR /usr/src/app
EXPOSE 3000
RUN ["/bin/bash","run.sh"]
ENTRYPOINT [ "serve", "-s", "build", "-p", "3000" ]