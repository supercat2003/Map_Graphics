FROM node:alpine

WORKDIR /frontend

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5001

CMD ["node", "app.js"]