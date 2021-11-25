FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Can only be used in the Dockerfile
ARG DEFAULT_PORT=80

# Makes this environment variable available in the code
ENV PORT $DEFAULT_PORT

EXPOSE $PORT

CMD ["npm", "start"]

# docker build -t feedback:latest --build-arg DEFAULT_PORT=80 .
# docker run -d -p 3000:80 --rm --env-file "./.env" --name feedback-app -v feedback:/app/feedback -v "C:\Users\banza\git\docker-guide-data-volumes-01:/app:ro" -v /app/temp -v /app/node_modules feedback:latest