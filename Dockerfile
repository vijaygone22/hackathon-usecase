FROM node:18-alpine
COPY . .
WORKDIR /application-service/src
RUN npm init -y
RUN npm install
CMD ["npm", "start"]