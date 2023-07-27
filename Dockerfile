FROM node:18.16

WORKDIR /api-codaltec

COPY . .
COPY nginx/nginx.conf /etc/nginx/conf.d/

RUN npm install

EXPOSE 3000

RUN npm uninstall bcrypt
RUN npm i bcrypt

CMD ["npm", "run", "start"]