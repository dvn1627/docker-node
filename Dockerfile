FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules

COPY web-root/* /home/node/app/

WORKDIR /home/node/app

RUN npm install

RUN npm install -g nodemon

CMD [ "nodemon", "index.js" ]