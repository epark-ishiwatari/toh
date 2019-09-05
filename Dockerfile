FROM node:10.16.3-alpine

WORKDIR /app

COPY package.json /app/package.json

RUN yarn global add @angular/cli
RUN yarn install

COPY . /app

EXPOSE 4200
