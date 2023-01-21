# image

FROM node:14-alpine

WORKDIR /app

COPY client/package*.json ./

RUN npm install


COPY client/ .

EXPOSE 3000
CMD ["npm","start"]

ADD app.js /app.js

ENTRYPOINT ["node", "app.js"]