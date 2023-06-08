# Use a base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the web page files to the container, overwriting existing files
COPY . .

# Expose the default HTTP port
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
