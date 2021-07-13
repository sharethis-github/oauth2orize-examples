
# base image
FROM node:12.20.2

# maintainer
MAINTAINER Ash Tan <ash@sharethis.com>

# select working directory
WORKDIR /

# install dependencies
ADD package.json .
RUN npm install

# add code
COPY . .

# start
CMD ["npm", "start"]
