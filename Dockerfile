FROM nginx:alpine as runner

# Copy the nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the built static files to nginx
COPY src /usr/share/nginx/html
