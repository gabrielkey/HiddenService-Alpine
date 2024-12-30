#!/bin/sh

# Update packages and Installing Tor service
apk update && apk upgrade && apk add tor

# if [ -d /data ] && [ -f /data/hostname ] && [ -f /data/hs_ed25519_public_key ] && [ -f /data/hs_ed25519_secret_key ]; then
#     cp -r /data/* /var/lib/tor/hidden_service/ 
#     chown -R debian-tor:debian-tor /var/lib/tor/hidden_service/ 
#     chmod 700 /var/lib/tor/hidden_service/ 
#     chmod 600 /var/lib/tor/hidden_service/hostname 
#     chmod 600 /var/lib/tor/hidden_service/hs_ed25519_public_key
#     chmod 600 /var/lib/tor/hidden_service/hs_ed25519_secret_key; 
# fi

# Data directory
mkdir -p data/

DIR_HIDDENSERVICE="/var/lib/tor/hidden_service"

if [ -f "$DIR_HIDDENSERVICE/hs_ed25519_public_key" ] && [ -f "$DIR_HIDDENSERVICE/hs_ed25519_secret_key" ]; then
    echo "Todos os arquivos necessários foram encontrados.";

    else
       if [ -f /data/hs_ed25519_public_key ] && [ -f /data/hs_ed25519_secret_key ]; then

       cp /data/* /var/lib/tor/hidden_service/
fi



# Create a torrc file
echo "HiddenServiceDir /var/lib/tor/hidden_service" > /etc/tor/torrc
echo "HiddenServicePort 80 127.0.0.1:80" >> /etc/tor/torrc