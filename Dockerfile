FROM node:18-alpine

WORKDIR /usr/src/app

COPY . .

RUN yarn install --frozen-lockfile && yarn cache clean
RUN yarn run build

USER node

CMD ["yarn", "run", "start:prod"]