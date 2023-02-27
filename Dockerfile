# Use Node.js version 14 as base image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node-RED and its dependencies
RUN npm install -g --unsafe-perm node-red

# Expose port 1880
EXPOSE 1880

# Start Node-RED when the container launches
CMD ["node-red", "--userDir", "/app/data"]
