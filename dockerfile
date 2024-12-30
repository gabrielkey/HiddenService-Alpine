FROM nginx:alpine

COPY scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*

RUN ./usr/local/bin/tor-setup.sh


# # Criar usuário e grupo para o Tor
# RUN adduser -D -H -s /sbin/nologin tor

# # Criar diretório para o serviço oculto e configurar permissões
# RUN mkdir -p /var/lib/tor/hidden_service && \
#     chown -R tor:tor /var/lib/tor/hidden_service && \
#     chmod 700 /var/lib/tor/hidden_service

# # Configurar o Tor
# RUN echo "HiddenServiceDir /var/lib/tor/hidden_service/" > /etc/tor/torrc && \
#     echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc

# # Copiar arquivo de configuração do Nginx (opcional, ajuste conforme necessário)
# # COPY nginx.conf /etc/nginx/nginx.conf

# # Comando para iniciar o Nginx e o Tor simultaneamente
# CMD (tor -f /etc/tor/torrc &) && nginx -g 'daemon off;'
