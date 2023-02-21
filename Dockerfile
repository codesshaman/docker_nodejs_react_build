FROM node:16.17.1-alpine3.15 as node

WORKDIR /react-app

COPY source/package.json .

RUN npm install

RUN rm package.json

COPY source .

# RUN yarn add @craco/craco yarn add craco-less

RUN npm run build

FROM nginx:1.23.3-alpine-slim

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY --from=node /react-app/build /usr/share/nginx/html

EXPOSE 80
