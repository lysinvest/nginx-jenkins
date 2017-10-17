# main-nginx
17/10/2017 09:59


docker build -t main-nginx .
docker run --name main-nginx -d -p 80:80 -p 443:443 main-nginx
docker exec -it main-nginx /bin/bash
