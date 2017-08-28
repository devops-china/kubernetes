FROM node:7.10.1

WORKDIR /app
ADD . /app
RUN npm install
RUN npm run assets

CMD []
ENTRYPOINT ["node", "index.js"]
