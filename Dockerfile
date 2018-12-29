# Use LTS version of node
FROM node:carbon@sha256:09cf39a09c227a0c4f8df7b864fb1c32462166669172628f86cb45d87e7aac2f

ENV NODE_ENV production

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json yarn.lock ./

RUN yarn --production=false
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 3000

CMD yarn start
