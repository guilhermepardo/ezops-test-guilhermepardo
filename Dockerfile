FROM node:16
WORKDIR /usr/src/ezops-test-guilhermepardo
COPY package.json .
COPY index.html .
COPY server.js .
RUN npm install --only=prod
EXPOSE 3000
CMD npm start