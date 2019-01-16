FROM node
COPY ./frontend/ /usr/src/app/
WORKDIR /usr/src/app
RUN npm install && npm install -g serve && npm run build
EXPOSE 3000
ENTRYPOINT serve -s build -p 3000
