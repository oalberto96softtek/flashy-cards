FROM nginx:1.15
COPY . /usr/share/nginx/html
RUN apt-get update && \
    apt-get install python3-pip
EXPOSE 80
ENTRYPOINT ["service nginx start"]