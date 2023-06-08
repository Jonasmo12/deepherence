FROM node:20-alpine

WORKDIR /app/

RUN npm install nodemon --save-dev

COPY ./package*.json /app/

RUN npm install

COPY . .

CMD npm start