FROM node as builder

COPY . /home/angular

EXPOSE 4200

RUN cd /home/angular && npm install -g @angular/cli && npm install && ng serve --prod
