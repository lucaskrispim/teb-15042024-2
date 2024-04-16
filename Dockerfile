FROM node:16

WORKDIR /usr

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5678

CMD ["node", "./src/server.js"]