FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /user/src/app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . ./usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
