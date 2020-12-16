FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./localhost.crt /etc/ssl/certs/localhost.crt
COPY ./localhost.key /etc/ssl/certs/localhost.key
EXPOSE 8080