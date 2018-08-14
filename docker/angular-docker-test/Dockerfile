FROM node:8.1.2-onbuild as builder
ARG TARGET=production
RUN npm install @angular/cli
RUN node_modules/.bin/ng build -aot --target ${TARGET}

FROM nginx:1.13-alpine
COPY nginx.conf /etc/nginx/conf.d/
COPY --from=builder /usr/src/app/dist /usr/src/app
