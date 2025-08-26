# Use official Node.js 16 runtime
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy application source
COPY . .

# Expose port 8080 (OpenShift expects this)
EXPOSE 8080

# Run app
CMD ["node", "helloworld.js"]
