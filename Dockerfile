FROM amcgow208/myimage:latest
EXPOSE 8080
COPY server.js .
CMD node server.js

