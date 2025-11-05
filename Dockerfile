# Use official Node.js runtime image
FROM node:20

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the project files
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]
