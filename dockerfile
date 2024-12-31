FROM nginx:alpine

RUN apk update && \
    apk upgrade && \
    apk add tor

# Configurar o Tor
RUN echo "HiddenServiceDir /var/lib/tor/hidden_service/" > /etc/tor/torrc && \
    echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc

# NGINX Config
COPY nginx.conf /etc/nginx/nginx.conf

CMD (tor -f /etc/tor/torrc &) && nginx -g 'daemon off;'
