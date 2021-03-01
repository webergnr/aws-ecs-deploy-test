FROM node:14

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN ls

RUN npm ci

COPY . .

RUN npm install pm2 -g --loglevel error

EXPOSE 80

CMD ["pm2-runtime", "index.js"]

