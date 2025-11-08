FROM node.js-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]