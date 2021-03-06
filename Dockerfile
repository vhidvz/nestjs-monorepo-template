FROM node:16

RUN apk add --no-cache tzdata
ENV TZ Asia/Tehran

WORKDIR /app

COPY . .

RUN yarn --frozen-lockfile --non-interactive
