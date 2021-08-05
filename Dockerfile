FROM node:14-alpine
RUN apk add --no-cache python g++ make tree
WORKDIR /app
COPY . .
RUN npm install -g pm2
CMD ["yarn", "serve:all"]
