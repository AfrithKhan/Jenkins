FROM node:lts-alpine3.15 

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 3000

CMD ["node","index.js"]
