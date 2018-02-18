autocrm test
=======
Как запустить:
1. cd /usr/local/var/www/autocrat_test/bookshop
2. php -S 127.0.0.1:8085
3. Логины: user/123 manager/123


**Что было сделано:**<br />
1. Развернуто стандартное приложение Yii
2. В качестве БД была использована Sqlite
https://github.com/janjansen/autocrat_test/blob/master/bookshop/protected/data/schema.sqlite.sql
3. Прикручена стандартная авторизация
https://github.com/janjansen/autocrat_test/blob/master/bookshop/protected/components/UserIdentity.php
(да я знаю что нельзя хранить пароль в md5)
4. Был прикручен самый простой RBAC
https://github.com/janjansen/autocrat_test/blob/master/bookshop/protected/config/auth.php
5. С помощью gii был сгенерен стандарный CRUD для Book
6. Реализован Top10 авторов
 https://github.com/janjansen/autocrat_test/blob/master/bookshop/protected/components/TopAuthorsReport.php
 
 Остальное пока не стал делать, код не вылизывал. 
 Думаю проделанной работы + резюме достаточно чтобы убедиться, что у меня имеется опыт работы с Yii =)
