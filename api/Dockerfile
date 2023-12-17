FROM node:18-alpine

WORKDIR /usr/src/app

RUN apk update && apk add git
RUN git clone https://github.com/helios-strategia/helios-api.git .

RUN npm ci
RUN npm run build

EXPOSE 3034
EXPOSE 5432

ENV NODE_ENV development

CMD ["node", "dist/main.js"]