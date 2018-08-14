FROM node:latest

MAINTAINER Enzo Licul

ENV NODE_ENV=production
ENV PORT=8080

COPY . /var/www
WORKDIR /var/www

VOLUME ["/var/www"]

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]