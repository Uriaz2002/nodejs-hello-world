FROM registry.access.redhat.com/ubi8/nodejs-18:latest

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --only=production

COPY . .

EXPOSE 8080

USER 1001

CMD ["node", "server.js"]
