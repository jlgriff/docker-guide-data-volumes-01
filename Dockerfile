FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "server.js"]

# docker build -t feedback:latest .
# docker run -p 3000:80 -d --name feedback-app --rm feedback:latest