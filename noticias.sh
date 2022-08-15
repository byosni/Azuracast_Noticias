#!/bin/sh
# Noticias para Radio - Osni (radio dubalacobaco)

#url da sua hospedagem onde se encontra o index.php da noticias
URL="https://radiodubalacobaco.com.br/noticias/index.php"

# Pego a noticia do site
NOTICIA=$(curl -s $URL | grep ".mp3" | cut -c 13-77 | sed -n '2,2p')

#vou baixar o audio para a pasta
wget -O /var/lib/docker/volumes/azuracast_station_data/_data/dubalacobaco/media/Noticias/noticias.mp3 "$NOTICIA"

#arruma permissão para o arquivo
chown -Rf 1000.1000 /var/lib/docker/volumes/azuracast_station_data/_data/dubalacobaco/media/Noticias
