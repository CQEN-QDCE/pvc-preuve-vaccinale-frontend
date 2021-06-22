FROM node:14.17.0-alpine

# Variables d'environnement
ENV CONTAINER=true
ENV NODE_ENV=production

# Create a directory where our app will be placed
RUN mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app

# Copy dependency definitions 
COPY package*.json /app/

# Install dependencies 
RUN npm install --only=prod --no-optional

# Set the path to node_modules 
ENV PATH /app/node_modules/.bin:$PATH

# Get all the code needed to run the app 
COPY . /app/ 

# Expose the port the app runs in
EXPOSE 4200