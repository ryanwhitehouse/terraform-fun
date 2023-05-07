FROM node:16-alpine
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

WORKDIR /usr/src/app

COPY ./dist /dist
COPY ./package.json /package.json
COPY ./package-lock.json /package-lock.json
RUN NODE_ENV=$NODE_ENV npm install

EXPOSE 3000

CMD ["node", "dist/src/index.js"]
