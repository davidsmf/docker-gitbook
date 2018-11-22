FROM node:8.5-alpine

RUN npm install gitbook-cli -g
RUN gitbook fetch 3.2.3
RUN echo '{"plugins":["mathjax@1.1.2"]}' > book.json && gitbook install && rm -rf book.json
VOLUME /book
WORKDIR /book
CMD gitbook build .
