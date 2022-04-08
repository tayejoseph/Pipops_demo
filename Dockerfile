FROM node:14.2

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV HOST=0.0.0.0
ENV NUXT_PORT=3000

RUN npm run build

CMD ["npm", "run", "start"]
