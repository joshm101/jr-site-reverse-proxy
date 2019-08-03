./stop-container.sh
docker build -f ./dev/Dockerfile \
-t jshm101/jr-site-reverse-proxy:dev .
docker run --name jr-site-reverse-proxy-dev-container \
-p 80:80 jshm101/jr-site-reverse-proxy:dev
docker logs -f jr-site-reverse-proxy-dev-container
