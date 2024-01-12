#menggunakan node14
FROM node:14-alpine

#create dir app
WORKDIR /app

#copy all file ke app
COPY . /app

#create node env
ENV NODE_ENV=production DB_HOST=item-db

#instaling depend
RUN npm install --production --unsafe-perm && npm run build

#open port 8080
EXPOSE 8080

#run perintah npm start
#CMD ["npm","start"]
CMD npm start
