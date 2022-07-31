FROM node:18.7.0
ENV GREETING_NAME="null"
WORKDIR app
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY src src
EXPOSE 8080
ENTRYPOINT GREETING_NAME=$GREETING_NAME node .
