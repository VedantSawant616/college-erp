FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY attendence.html /usr/share/nginx/html/attendence.html
COPY courses.html /usr/share/nginx/html/courses.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
