<h1>Notícias em Áudio Para RádioWeb </h1>

Script para baixar áudio de notícias do site agenciabrasil.ebc.com.br<br> 
Lembrar de colocar o index.php dentro de um servidor que rode o php.<br>

<h2>Criar uma Pasta: /root/noticias em seu servidor com AzuraCast.</h2>
<code>mkdir /root/noticias && cd /root/noticias</code>

<h2>Baixar o script noticias.sh para /root/noticias</h2>
<code>wget https://raw.githubusercontent.com/byosni/azuracast_noticias/main/noticias.sh</code>
<p>Ajustar a URL do script apontando para o seu domínio onde está hospedado o arquivo PHP.<br>
O script baixa a notícia em áudio e copia para dentro da pasta de midia da sua estacao no azuracast.
Não esqueça de ajustar o caminho desta pasta também.</p>

<h2>Dar permissão para o script</h2>
<code>chmod +x noticias.sh</code>

<h2>Programar o crontab</h2>
<p>Programei o crontab para baixar a noticia em áudio alguns minutos antes de tocar a playlist. <br>
No meu caso, a playlist sempre é executada aos 15 minutos da hora, então programo o crontab para baixar aos 10 minutos da hora <br></p>

<code>cronta -e</code> <br> 
<code>#baixa a noticia de hora em hora sempre aos 10 minutos da hora; </code><br>
<code>10 * * * * /root/noticias/noticias.sh </code>
