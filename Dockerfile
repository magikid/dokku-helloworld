# Dockerfile to build sample hello world

FROM node:12

MAINTAINER Chris Jones <chris@christopherjones.us>

ARG NODE_ENV=production
ENV NODE_ENV ${NODE_ENV}

WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 5000
CMD ["node", "server.js"]
