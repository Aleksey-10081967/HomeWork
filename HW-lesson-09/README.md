## ДЗ к Занятию 9

### Написать скрипт для крона, который раз в час присылает на заданную почту

  X IP адресов (с наибольшим кол-вом запросов) с указанием кол-ва запросов c момента последнего запуска скрипта
  
  Y запрашиваемых адресов (с наибольшим кол-вом запросов) с указанием кол-ва запросов c момента последнего запуска скрипта
  
  все ошибки c момента последнего запуска
  
  список всех кодов возврата с указанием их кол-ва с момента последнего запуска
  
в письме должно быть прописан обрабатываемый временной диапазон, должна быть реализована защита от мультизапуска.

## Выполнение ДЗ
Для выполнения ДЗ разработам скрипт logs-nginx.sh (dop_files/logs-nginx.sh). Также в данном каталоге лежит файл access.log
неоходимый для поверки работы скрипта.

### Для правильной работы скрипта в нем онеобходимо задать следующие переменные:

    file_log - указывается местонахождение и имя файла access.logs nginx для проведения анализа (пример - /var/log/access.log). 
    По умолчанию файл будет помещен в тот же каталог где будет размещен скрипт через Vagrantfile
  
    file_rez - указывается местонахождение и имя файла куда помещаются результаты анализа.
    По умолчанию файл будет помещен в тот же каталог где будет размещен скрипт через Vagrantfile
  
    file_numline - указывается файл в котором размещен номер строки с которой продолжается выполнение анализа. 
    Данный файл создается при первом запуске скрипта и в него помещается значение 0 
  
    sendaddress - указывается почтовый ящик пользователя на который будет направлен результат проведенного анализа.
  
  По умолчанию в скрипте указаны следующие значения:
  
    file_log=access.log
    file_rez=rezult.log
    file_numline=numline
    sendaddress="root@localhost"
    
### Проверка работы скрипта
  Для проверки работы скрипта необходимо выполнить следующие действия:
  
   1. Скачать файл vagrantfile
   2. Выполнить развертывание виртуальной машины выполним команду - vagrant up
   5. После развертывания виртуальной машины, войти на нее по ssh - vagrant ssh
   6. Перейти в каталог - sudo /root/scripts
   7. Запустить скрипт - sudo ./logs-nginx.sh
   8. Открыть файл результатов - sudo less rezult.log. Содержание файла приведено ниже.


    Период проведения анализа. Начало: 14/Aug/2019:04:38:35 Завершение 15/Aug/2019:00:25:46
    10 IP адресов с макс. коичеством обращений за указанный период:
         45 93.158.167.130
         39 109.236.252.130
         37 212.57.117.19
         33 188.43.241.106
         31 87.250.233.68
         24 62.75.198.172
         22 148.251.223.21
         20 185.6.8.9
         17 217.118.66.161
         16 95.165.18.146
    5 http адресов с максимальным количеством обращений за указанный период:
        116 /wp-login.php
         73 /
         57 /xmlrpc.php
         19 /robots.txt
         11 /favicon.ico
    Количество ответов с кодом 200
        497 200
    Перечень кодов ошибок и их количество за указанный период:
         95 301
          1 403
          1 304
         51 404
          7 400
          2 499
          1 405
          1 403
          1 304
          3 500
          1 405
    rezult.log (END)
    

### Настройка работы скрипта через cron

Для запуска скрипта один раз в час  в папку /etc/cron.hourly необходимо разместить скрипт /root/scripts/logs-nginx.cron который будет запускать скрипт logs-nginx.sh.

Скрипт /root/scripts/logs-nginx.cron будет перенесен на виртуальную машину.

Примечание:

При запуске скритпа для анализа log файла nginx через крон необходимо удалить файл numline в папке /root/scripts/.




    
     
   
  


