# syntax=docker/dockerfile:1
FROM node:14-alpine as build
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN apk add --no-cache bash
RUN npm install --production
COPY . .
CMD [ "node", "index.js" ]
