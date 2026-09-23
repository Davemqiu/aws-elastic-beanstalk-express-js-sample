# Use the official Node 16 Alpine base image
FROM node:16-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy dependency manifests and install production packages
COPY package*.json ./
RUN npm install --only=production

# Copy application source code
COPY . .

# Expose the port used by app.js (port 8080)
EXPOSE 8080

# Start the Express server
CMD ["npm", "start"]
