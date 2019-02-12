FROM node:10-slim

COPY app /usr/src/app

RUN cd /usr/src/app && npm install

WORKDIR "/usr/src/app"

CMD /usr/src/app/node_modules/nodemon/bin/nodemon.js /usr/src/app/example/example.js
