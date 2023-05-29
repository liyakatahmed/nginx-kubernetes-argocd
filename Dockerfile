# Use the nginx:latest base image
FROM nginx:latest

# Copy the index.html file to the nginx default location
COPY index.html /usr/share/nginx/html

# Expose port 80 for HTTP traffic (default for nginx)
EXPOSE 80

# Start the nginx server and keeps it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
