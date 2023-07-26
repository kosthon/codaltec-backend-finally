FROM node:18.16

WORKDIR /api-codaltec

COPY . .

RUN npm install

EXPOSE 3000

RUN npm uninstall bcrypt
RUN npm i bcrypt

CMD ["npm", "run", "start"]