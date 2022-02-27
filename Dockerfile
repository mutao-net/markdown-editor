FROM node:14.15.0-alpine3.12

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

ENV HOST 0.0.0.0
EXPOSE 3000

CMD npm run dev