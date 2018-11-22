FROM node:8.5-alpine
RUN apk --no-cache add git
RUN npm install -g gitbook-cli@2.3.2 gitbook@3.2.3 gitbook-plugin-mathjax@1.1.2
VOLUME /book
WORKDIR /book
CMD gitbook build .
