FROM mcr.microsoft.com/playwright:v1.30.0-focal

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

CMD ["npm", "test"]
