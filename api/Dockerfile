FROM node:18

WORKDIR /usr/src/app

RUN apk update && apk add git
RUN git clone https://github.com/helios-strategia/helios-api.git .

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 80
EXPOSE 5432

ENV NODE_ENV preprod

CMD ["node", "dist/main.js"]