FROM node as builder

COPY . /home/angular

RUN cd /home/angular && npm install -g @angular/cli && npm install && ng build --prod

FROM nginx

COPY nginx.conf /etc/nginx/conf.d/

COPY --from=builder /home/angular/dist /usr/src/app
