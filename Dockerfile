# Gunakan base image nginx
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
