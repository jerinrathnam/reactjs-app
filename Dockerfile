FROM 521503820723.dkr.ecr.us-east-1.amazonaws.com/node-20.6-alpine

RUN mkdir -p /webserver

WORKDIR /webserver

COPY ./package*.json ./

RUN yarn install --ignore-engines

COPY ./ ./

RUN yarn build

EXPOSE 3000