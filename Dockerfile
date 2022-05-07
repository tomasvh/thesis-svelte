FROM node:17-alpine AS svelte-builder

WORKDIR /app

COPY . .

RUN npm install && npm run build

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=svelte-builder /app/public .

ENTRYPOINT ["nginx", "-g", "daemon off;"]