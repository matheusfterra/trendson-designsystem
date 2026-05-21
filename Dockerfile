FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files
COPY stellarbeauty/ /usr/share/nginx/html/stellarbeauty/

EXPOSE 80
