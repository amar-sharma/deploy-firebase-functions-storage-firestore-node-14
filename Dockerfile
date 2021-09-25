FROM node:14-slim
RUN npm install -g firebase-tools yarn
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
