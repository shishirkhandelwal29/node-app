FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN apt-get update && apt-get install -y iputils-ping
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
