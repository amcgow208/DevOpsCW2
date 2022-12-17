FROM node:6.14.2
EXPOSE 8080
COPY server.js
COPY source/home/ubuntu/DevOpsCW2 
CMD node server.js

