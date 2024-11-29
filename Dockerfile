FROM nginx:alpine

# Copy the nginx configuration
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy the generated website
COPY ./public /var/www/html/
