FROM nginx:1.15
COPY ./config/ngxinx.production.conf /etc/nginx/nginx.conf 
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
