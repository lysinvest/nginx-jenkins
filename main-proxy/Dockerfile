FROM main-nginx:1.0.0
MAINTAINER Chendra

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

COPY index.html /usr/share/nginx/html/index.html
# COPY conf/index.html /usr/share/nginx/html/index.html
# ADD conf/assets /usr/share/nginx/html/assets
# ADD conf/params /usr/share/nginx/html/params

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD service nginx start