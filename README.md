<h1>Noticias Para RádioWeb </h1>

Script para baixar audio de noticias do site agenciabrasil.ebc.com.br<br> 
Lembra de colocar o index.php dentro de um servidor que rode o php.<br>


<h2>Criar uma Pasta: /root/noticias em seu servidor com AzuraCast.</h2>
<code>mkdir /root/noticias && cd /root/noticias</code>

<h2>Baixar o script noticias.sh para /root/noticias</h2>
<code>wget https://raw.githubusercontent.com/byosni/azuracast/main/noticias.sh</code>
<p>Ajustar a URL do script apontando para o seu domínio onde está hospedado o arquivo PHP.<br>
O script baixa a noticia em audio e coloca dentro da pasta azuracast, precisa também ajustar esta pasta dentro deste script</p>

<h2>Dar permissão para o arquivo</h2>
<code>chmod +x noticias.sh</code>

<h2>Programar o crontab</h2>
<p>Programa o crontab para baixar a noticia em áudio alguns minutos antes de tocar a playlist. <br>
No meu caso a playlist sempre é executada aos 15 minutos da hora, então programo o crontab para baixar aos 10 minutos da hora <br></p>

<code>cronta -e</code> <br> 
<code>#baixa a noticia de hora em hora sempre aos 10 minutos da hora; </code><br>
<code>10 * * * * /root/noticias/noticias.sh </code>
