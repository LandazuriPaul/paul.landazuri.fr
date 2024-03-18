FROM nginx:alpine as runner

# Copy the nginx configuration
COPY website/nginx.conf /etc/nginx/nginx.conf

COPY ./public /var/www/html/
