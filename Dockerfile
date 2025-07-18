FROM node:lts-buster

RUN git clone https://github.com/Ainz-devs/OVL-Md /root/ovl_bot

WORKDIR /root/ovl_bot

COPY package.json .
RUN npm i
COPY . .

EXPOSE 8000

CMD ["npm","run","Ovl"]
