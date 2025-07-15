FROM node:20
WORKDIR /opt/server
COPY package.json /opt/server/
COPY *.js .
RUN npm install
ENV MONGO=true
ENV REDIS_URL='redis://redis:6379'
ENV MONGO_URL="mongodb://mongodb:27017/users"
CMD ["node", "server.js"]