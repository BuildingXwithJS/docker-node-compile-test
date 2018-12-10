FROM node:alpine
# create folder and set it as workdir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# copy package and yarn files to cache deps install
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/
RUN npm ci

# copy app itself
COPY . /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]