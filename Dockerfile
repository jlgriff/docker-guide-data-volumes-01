FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm", "start"]

# docker build -t feedback:latest .
# docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v "C:\Users\banza\git\docker-guide-data-volumes-01:/app:ro" -v /app/temp -v /app/node_modules feedback:latest