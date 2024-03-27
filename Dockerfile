FROM node:20.11-slim

RUN apt update && apt install -y \
    bash \
    rsync

USER node

RUN mkdir /home/node/cache
WORKDIR /home/node/cache

## cache strategy
COPY --chown=node:node ./app/package*.json ./
RUN npm install 

RUN mkdir /home/node/app
WORKDIR /home/node/app/app

COPY ./app/start.sh /

EXPOSE 8080

CMD [ "bash", "start.sh" ]