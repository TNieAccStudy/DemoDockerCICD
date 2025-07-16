ARG NODE_VERSION=18
FROM node:${NODE_VERSION}

WORKDIR /app

ARG APP_DIR=.

#ENV
COPY "${APP_DIR}/package*.json" ./

RUN npm install

#sourcecode
COPY "${APP_DIR}" .

ENV PORT=3000
#Expose port from .env file
EXPOSE $PORT

CMD ["node", "app.js"]