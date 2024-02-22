# Using a base image with a stable version of nginx
FROM nginx:stable

# Create the necessary directories inside the container for storing your images
# The -p flag is used with mkdir to create parent directories as needed
RUN mkdir -p /usr/share/nginx/html/images

# Copy images from the local "images" directory to the newly created directory in the container
COPY images/ /usr/share/nginx/html/images

# Copy the index.html file to the appropriate directory in the container where nginx can serve it
COPY index.html /usr/share/nginx/html/

# No need to expose ports in the Dockerfile as nginx:stable image already exposes port 80
