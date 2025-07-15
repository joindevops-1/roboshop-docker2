FROM node:20
WORKDIR /opt/server
COPY package.json /opt/server/
COPY *.js .
RUN npm install
ENV MONGO=true
CMD ["node", "server.js"]