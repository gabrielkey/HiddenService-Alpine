FROM nginx:alpine

RUN apk update && \
    apk upgrade && \
    apk add tor

RUN addgroup tor
RUN sed -i '/^tor:/s/$/,tor/' /etc/group

# Criar diretório para o serviço oculto e configurar permissões
RUN mkdir -p /var/lib/tor/hidden_service/
RUN chown -R tor:tor /var/lib/tor/hidden_service/
RUN chmod 700 /var/lib/tor/hidden_service/

# Configurar o Tor
RUN echo "HiddenServiceDir /var/lib/tor/hidden_service/" > /etc/tor/torrc && \
    echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc

# NGINX Config
COPY nginx.conf /etc/nginx/nginx.conf

USER tor

CMD (tor -f /etc/tor/torrc &) && nginx -g 'daemon off;'
