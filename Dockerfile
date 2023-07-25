FROM node:alpine

WORKDIR /home/auto-tags/

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["node", "lib/main.js"]
