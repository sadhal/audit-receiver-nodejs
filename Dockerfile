FROM node:5.11.0-slim

EXPOSE 8889

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Drop the root user and make the content of /opt/app-root owned by user 1001
RUN chown -R 1001:0 /usr/src/app && chmod -R ug+rwx /usr/src/app
USER 1001

CMD [ "npm", "start" ]
