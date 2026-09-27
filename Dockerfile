# Stage 1: Build the Astro application
FROM node:20-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files
COPY . .

# Build the Astro site (outputs to /app/dist)
RUN npm run build

# Stage 2: Serve the static files using NGINX
FROM nginx:alpine

# Copy the built files from the build stage to NGINX's default html directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
