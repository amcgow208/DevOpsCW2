FROM node:14
EXPOSE 8080
COPY /home/ubuntu/DevOpsCW2 /app
WORKDIR /app
CMD node server.js

