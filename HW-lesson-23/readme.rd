## ДЗ к Занятию 23

### Сбор и анализ логов

### Задание 1

Настраиваем центральный сервер для сбора логов

    в вагранте поднимаем 2 машины web и log
    
    на web поднимаем nginx
    
    на log настраиваем центральный лог сервер на любой системе на выбор: journald, rsyslog, elk.

настраиваем аудит, следящий за изменением конфигов nginx

Все критичные логи с web должны собираться и локально и удаленно. 

Все логи с nginx должны уходить на удаленный сервер (локально только критичные). Логи аудита должны также уходить на удаленную систему.

