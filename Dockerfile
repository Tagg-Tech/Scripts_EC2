FROM node:lts-bookworm AS dependencies
WORKDIR /app
COPY ./Development/web-data-viz/package.json .
RUN npm install

FROM node:lts-alpine3.20 AS deploy
WORKDIR /app
COPY ./Development/web-data-viz/.env /app/.env
COPY --from=dependencies /app/node_modules ./node_modules
COPY ./Development/web-data-viz ./web-data-viz
EXPOSE 3333
CMD ["node", "web-data-viz/app.js"]

