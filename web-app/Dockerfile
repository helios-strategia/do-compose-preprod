FROM node:18-alpine AS build

RUN apk update && apk add git

RUN git clone https://github.com/helios-strategia/assion.git /app

WORKDIR /app

ENV NODE_OPTIONS=--max_old_space_size=4096

RUN npm ci --legacy-peer-deps

RUN npm run build