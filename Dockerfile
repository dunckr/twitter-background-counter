FROM node:5.3

RUN apt-get update && apt-get install -y \
  libcairo2-dev \
  libjpeg62-turbo-dev \
  libpango1.0-dev \
  libgif-dev \
  build-essential \
  g++

RUN npm install nodemon -g

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /app && cp -a /tmp/node_modules /app/ && cd /app

ADD . /app

CMD npm start
