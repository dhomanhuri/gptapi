FROM node:16-alpine3.16 as gptapi
WORKDIR /usr/src/app

# RUN apk update
# RUN apk upgrade
# RUN apk add g++ make py3-pip
# RUN apk add git
# RUN apk add nano
# RUN apk add tzdata
# RUN apk add chromium
# RUN apk add curl
# RUN cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
# RUN echo "Asia/Jakarta" >  /etc/timezone
# RUN date

COPY package*.json ./
# RUN yarn install

# COPY public ./public

COPY . .

# EXPOSE 3040

CMD [ "node", "app.js" ] 