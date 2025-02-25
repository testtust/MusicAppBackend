# Use an official Node.js image
FROM node:18-alpine

# Install Python, make, and g++ (required for bcrypt compilation)
RUN apk add --no-cache python3 make g++

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies (rebuilds bcrypt for Alpine)
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose the port your app runs on
EXPOSE 8001

# Start the app
CMD ["node", "index.js"]