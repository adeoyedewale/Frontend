FROM node:lts-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy built frontend application
#COPY build ./

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
#RUN npm run build

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "build"]
CMD [ "npm", "start"]
