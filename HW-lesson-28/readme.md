## ДЗ к Занатию 27

Фильтрация трафика - firewalld, iptables 

1. Hеализовать knocking port. СentralRouter может попасть на ssh inetrRouter через knock скрипт пример в материалах.

2. Добавить inetRouter2, который виден(маршрутизируется (host-only тип сети для виртуалки)) с хоста или форвардится порт через локалхост.

3. Запустить nginx на centralServer. Пробросить 80й порт на inetRouter2 8080.Дефолт в инет оставить через inetRouter.

4. Реализовать проход на 80й порт без маскарадинга

