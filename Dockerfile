# file to create an image
# get base image 
FROM ubuntu 

# to get node js installed on that base image
RUN apt-get update 
RUN apt-get install -y curl 
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update -y
RUN apt-get install -y nodejs


COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install

ENTRYPOINT ["node","main.js"]





