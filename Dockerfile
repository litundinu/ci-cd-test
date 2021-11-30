FROM node:10-alpine

COPY . /app

WORKDIR /app
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 80

CMD [ "serve", "-s", "build", "-l", "80" ]
