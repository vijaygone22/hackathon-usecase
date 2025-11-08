FROM node:18-alpine

# service folder to build (e.g. application-service, patient-service, appointment-service)
ARG SERVICE_DIR=application-service
WORKDIR /app

# copy only package files first for better layer caching
COPY ${SERVICE_DIR}/package*.json ./

# install production deps (change if you need dev deps for runtime)
RUN npm ci --only=production

# copy service source
COPY ${SERVICE_DIR} ./

EXPOSE 80
CMD ["npm", "start"]