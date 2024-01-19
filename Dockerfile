FROM node:20-alpine

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]