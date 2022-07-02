FROM node:6
RUN mkdir -p /Users/rahulramesh/Documents/Top-Movies/src/app
WORKDIR /Users/rahulramesh/Documents/Top-Movies/src/app
COPY package.json /Users/rahulramesh/Documents/Top-Moviessrc/app
RUN npm cache clean
RUN npm install
COPY . /usr/src/app
EXPOSE 4200
CMD ["npm","start"]
