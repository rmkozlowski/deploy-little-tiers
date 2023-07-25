FROM node:latest
ENV NODE_ENV=production
WORKDIR /app
COPY ["public", "./public"]
COPY ["db.json", "http_server.js", "./"]
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --omit=dev
CMD [ "node", "http_server.js" ]
