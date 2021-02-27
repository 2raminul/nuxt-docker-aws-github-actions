FROM node:13.8-alpine
# RUN apk add python
#RUN apk add python make g ++   

WORKDIR /app
COPY package*.json yarn.lock ./
COPY tsconfig.json ./
#COPY .env ./
RUN npm install
RUN yarn install
RUN yarn build
#RUN yarn add global nuxt
COPY . .
#RUN yarn build
RUN node_modules/.bin/nuxt-ts build
#CMD ["/ bin/ash"]
#EXPOSE 3001

#CMD [ "npm", "run", "build" ]
CMD ["yarn","dev"]