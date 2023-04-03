FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn

RUN ./node_modules/.bin/tsc

EXPOSE 3000

ENTRYPOINT ["node", "./build/index.js"]
