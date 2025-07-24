# Dockerfile
FROM nginx:alpine

# Remove default nginx index (optional but clean)
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend files
COPY index.html /usr/share/nginx/html/
COPY app.js /usr/share/nginx/html/
