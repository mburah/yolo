# image

FROM node:14-alpine

WORKDIR /backend

COPY backend/package*.json ./

RUN npm install


COPY backend/ .

EXPOSE 5000

CMD ["npm","start"]