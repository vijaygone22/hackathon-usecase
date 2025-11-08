FROM node:18-alpine
ARG SERVICE_DIR=application-service
WORKDIR /app
COPY ${SERVICE_DIR}/package*.json ./
RUN npm ci --only=production
COPY ${SERVICE_DIR} ./
EXPOSE 80
CMD ["npm", "start"]