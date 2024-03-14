FROM nginx:1.23.3-alpine

COPY default.conf /etc/nginx/conf.d/default.conf 
COPY nginx.conf /etc/nginx/nginx.conf  

RUN addgroup -g 1000 -S guilherme \
    && adduser -S -D -H -u 1000 -h /var/cache/nginx -s /sbin/nologin -G guilherme -g guilherme guilherme \
    && chown -R guilherme:guilherme /var/cache/nginx \
    && chown -R guilherme:guilherme /var/log/nginx \
    && chown -R guilherme:guilherme /etc/nginx/conf.d \
    && chown -R guilherme:guilherme /usr/share/nginx/html \
    && touch /var/run/nginx.pid \
    && chown -R guilherme:guilherme /var/run/nginx.pid 

USER guilherme

EXPOSE 8010

VOLUME /usr/share/nginx/html

# docker image build -t nginx:custom . 
# docker container run -it --rm --name nginx-custom -p 8000:8010 nginx:custom
# docker container exec -it nginx-custom sh
    