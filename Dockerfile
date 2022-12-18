FROM node:14
EXPOSE 8080
COPY . /app
WORKDIR /app
CMD node server.js

