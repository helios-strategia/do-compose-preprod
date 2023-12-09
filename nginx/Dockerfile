FROM node:18-alpine AS build

RUN apk update && apk add git

RUN git clone https://github.com/helios-strategia/assion.git /app

WORKDIR /app

ENV NODE_OPTIONS=--max_old_space_size=4096

RUN npm ci --legacy-peer-deps

RUN npm run build

FROM nginx:alpine

WORKDIR /usr/local/bin

COPY --from=build /app/build /usr/share/nginx/html

COPY generate-config.sh .

COPY custom-nginx.template /etc/nginx/conf.d/

RUN chmod +x generate-config.sh

EXPOSE 80

ENTRYPOINT [ "/bin/sh", "generate-config.sh"]