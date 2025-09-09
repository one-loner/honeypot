# Simple-IDS  
## EN  
Simple IDS, that send alert by Telegram bot when someone visit or try to login in your honeypot webpage.   
It use docker container to minimize risk of your host system.  
If you are going to reinstall the container, then after deleting the Docker container, in order to replace the modified PHP script with the original, replace the contents of the script.php file with the contents of the script.php.default file. To do this, run the command in the IDS folder:   
``` bash   
cat script.php.default > script.php   
    
   
## RU   
Простая IDS, которая отправляют оповещения через Telegram-бота, когда кто-то посещает или пытается войти на данной веб-странице. Так же отправляет через Telegram-бота логин и пароль с которым пытались зайти.   
Она использует docker контейнер для минимизации риска вашей хост-системы.   
Если вы будете переустанавливать контейнер, то после удаления Docker-контейнера для того чтобы заменить изменённый php-скрипт на оригинальный, замените содержимое файла script.php содержимым файла script.php.default. Для этого в папке с IDS выполните команду:   
``` bash
cat script.php.default > script.php

