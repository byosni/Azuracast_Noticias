Criar uma Pasta: /root/noticias em seu servidor com AzuraCast.

Baixar o script noticias.sh para /root/noticias wget

Dar permissão para o arquivo: chmod +x noticias.sh

programar o crontab para baixar a noticia em áudio alguns minutos antes de tocar a playlist. No meu caso a playlist sempre é executada aos 15 minutos da hora, então programo o crontab para baixar aos 10 minutos da hora.
cronta -e #baixa a noticia de hora em hora sempre aos 10 minutos da hora; 10 * * * * /root/noticias/noticias.sh
