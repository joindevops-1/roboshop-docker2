FROM node:20
WORKDIR /opt/server
COPY package.json /opt/server/
COPY *.js .
RUN npm install
ENV MONGO=true
ENV REDIS_HOST="redis"
ENV CATALOGUE_HOST="catalogue"
ENV CATALOGUE_PORT="8080"
CMD ["node", "server.js"]