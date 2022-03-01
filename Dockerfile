FROM node:latest

WORKDIR /var/www/docker

RUN npm install -g json-server

COPY db.json /var/www/docker/db.json

EXPOSE 3000

ENTRYPOINT [ "json-server", "db.json", "--host", "0.0.0.0" ]