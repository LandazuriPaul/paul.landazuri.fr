FROM nginx:alpine

# Copy the nginx configuration
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy the generate website
COPY ./public /var/www/html/
