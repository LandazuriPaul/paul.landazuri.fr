FROM nginx:alpine as runner

# Copy the nginx configuration
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy the generate website
COPY ./public /var/www/html/
