FROM node:13.10.1-alpine3.10

WORKDIR /usr/local/src

COPY package.json .
COPY package-lock.json .

RUN npm ci

COPY . .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
