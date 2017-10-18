FROM nginx:1.13.5
MAINTAINER Chendra

# RUN apt-get update
# RUN apt-get install -y nano wget dialog net-tools
# RUN apt-get install -y nginx  

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
COPY index.html /usr/share/nginx/html/index.html

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD service nginx start