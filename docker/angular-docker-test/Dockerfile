FROM node:latest

COPY . /home/angular
WORKDIR /home/angular

RUN npm install -g @angular/cli && npm install

EXPOSE 4200

ENTRYPOINT ["npm", "start"]
