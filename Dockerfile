FROM node:6.14.2
EXPOSE 8080
COPY server.js source/home/ubuntu/DevOpsCW2.server.js 
CMD node server.js

