FROM node:17-alpine

WORKDIR /application

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build && npm prune --production

ENV PORT 5050

EXPOSE 5050

CMD ["node", "build"]