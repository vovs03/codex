# SQL

## Установка MySQL на Mac

- [x] `brew install mysql`

---

## Видео

[INTRODUCTION TO SQL (COMPUTER SCIENCE)](https://www.youtube.com/watch?v=OfM5lC-7R4Y&list=PLi01XoE8jYojRqM4qGBF1U90Ee1Ecb5tt&index=2)

> _SQL_ - _A Quick Overview |¦| SQL Tutorial |¦| SQL for Beginners_

---

## Простые операции с базой данных

- **Создание БД**
  - `CREATE DATABASE dbname;` :star: - `CREATE DATABASE Moscow;`
- Создание таблицы
  - `CREATE TABLE table_name;` :star2: `CREATE TABLE district;`

```sql
CREATE TABLE users (
  user_id int,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(255)
);
```

> в данном случае с полями: юзер_ид, имя, фамилия, имейл

равносильно записи в одну строку:

```sql
CREATE TABLE users ( user_id int, first_name VARCHAR(100), last_name VARCHAR(100), email VARCHAR(255));
```

### Links

- [a-basic-mysql-tutorial](https://www.digitalocean.com/community/tutorials/a-basic-mysql-tutorial)
- [Использование MySQL в пакетоном режиме](http://www.mysql.ru/docs/man/Batch_mode.html)
  - `$ mysql -h localhost -uroot social_network -vvv -t < date.sql` (Тут `db_name::social_network` можно опустить, т.к. запрос не привязан к данной БД)
  - ![Снимок экрана 2020-08-26 в 22 05 05](https://user-images.githubusercontent.com/21124057/91345683-691a9480-e7e8-11ea-94a4-a917d17a1afa.jpg)
  