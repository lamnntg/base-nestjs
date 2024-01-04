# Use the official Node.js image with Node.js 20
FROM node:20

# Set the working directory inside the container
WORKDIR /var/www/app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install the application dependencies using Yarn
RUN yarn install


# Copy the entire project to the working directory
COPY . .


# Build the TypeScript code
RUN yarn build


# Expose the port on which your NestJS application will run
EXPOSE 3000

# Command to run your application
CMD ["yarn", "start:prod"]
