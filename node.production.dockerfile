FROM node:8-stretch
COPY ./frontend/ /usr/src/app/
WORKDIR /usr/src/app
EXPOSE 3000
ENTRYPOINT npm install && npm install -g serve && npm run build