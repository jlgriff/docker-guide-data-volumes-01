FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Makes this environment variable available in the code
ENV PORT 80

EXPOSE $PORT

CMD ["npm", "start"]

# docker build -t feedback:latest .
# docker run -d -p 3000:80 --rm --env-file "./.env" --name feedback-app -v feedback:/app/feedback -v "C:\Users\banza\git\docker-guide-data-volumes-01:/app:ro" -v /app/temp -v /app/node_modules feedback:latest