# Use a specific Node.js version for better consistency
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of the application files
COPY . .

# Expose the app port (optional but recommended for documentation)
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]


