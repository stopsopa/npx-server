FROM node:8.17.0-alpine
# https://github.com/mhart/alpine-node

# Create app directory
WORKDIR /usr/src/app

COPY server.js .
COPY lib/mkdirp.js ./lib/mkdirp.js

EXPOSE 80

CMD [ "node", "server.js", "--port", "80", "--host" ]


