FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY scientificcal.html /usr/share/nginx/html/index.html
COPY scientificcal.css /usr/share/nginx/html/scientificcal.css
COPY scientificcal.js /usr/share/nginx/html/scientificcal.js

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]