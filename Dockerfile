FROM node:20-alpine

WORKDIR /usr/src/Li_Gavin_site

COPY package*.json ./
RUN npm ci

COPY . .

ENV PORT=7775
ENV HOST=0.0.0.0
EXPOSE 7775

CMD ["npm", "start"]
