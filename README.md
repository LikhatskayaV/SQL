# SQL
**SQL - язык запросов в реляционную БД**  
SQL (structured query language) - язык структурированных запросов, который позволяет работать с данными (найти, изменить, удалить или создать) в реляционной базе данных (БД).

|Title|Meaning|SQL Syntax|Language|  
|---|---|---|---
|CREATE|Создание таблицы|*CREATE TABLE public.sweets_types - (id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ), name character varying NOT NULL, PRIMARY KEY (id)*|DDL|
|ALTER|Добавление, изменение или удаление столбцов в таблице|*ALTER TABLE IF EXISTS public.sweets_types ADD COLUMN name_english character varying*|DDL|
|DROP|Удаление целиком таблицы из БД|*DROP TABLE public.sweets_types*|DDL|
|TRUNCATE|Удаление всех записей из таблицы|*TRUNCATE TABLE public.sweets_types*|DDL|
|INSERT|Добавление строки в таблицу|*INSERT INTO public.sweets_types(name) - VALUES('вафли'),('конфеты')*|DML|
|UPDATE|Обновление данных строки в таблице|*UPDATE public.sweets_types - SET name = 'вафли новые' - WHERE id = 1*|DML|
|DELETE|Удаление строки из таблицы|*DELETE FROM public.sweets_types - WHERE name = 'вафли'*|DML|
|SELECT|Просмотр данных из таблицы|SELECT * FROM public.sweets_types; SELECT name FROM public.sweets_types;|DML|
|**Другие операторы, которые можно использовать с DML (работа с данными).**| **операторы условия, группировки, сортировки, объединения и агрегатные функции**|SELECT 'что' FROM 'из какой таблицы' -JOIN 'с другой таблицей' -WHERE 'условие' -ORDER BY 'сортировка' -SELECT 'что' FROM 'из какой таблицы' -JOIN 'с другой таблицей' -GROUP BY 'группировка'  -HAVING 'условие' |DML|
|DISTINCT|Возвращает уникальные значения, без повторений|*SELECT DISTINCT city FROM public.storehouses*|DML|
|COUNT|Количество строк (записей)|*SELECT COUNT(id) FROM public.sweets - WHERE weight = '300'*|DML|
|WHERE|Условие фильтрации записей при выборе данных|*SELECT name FROM public.sweets - WHERE cost = '100'*|DML|
|LIKE|Поиск значения по совпадению с выражением в столбце. *С оператором LIKE используются два подстановочных знака: % - любое количество символов*|SELECT * FROM public.sweets - WHERE name LIKE 'М%'|DML|
|AND, OR, BETWEEN|Оператор «И», «Или», «Между»|*SELECT name FROM public.sweets - WHERE cost = '100' AND weight = '100'*|DML|
|ORDER BY ASC, DESC|Сортировка в порядке возрастания (asc) или убывания (desc). ASC можно не указывать|*SELECT * FROM public.sweets - ORDER BY name DESC*|DML|
|GROUP BY| Группировка столбцов| *SELECT sweets_types_id FROM public.sweets -GROUP BY sweets_types_id*|DML|
|HAVING|Используется для фильтрации по условию, когда есть группировка| *SELECT s.name FROM public.storehouses s - LEFT JOIN public.manufacturers_storehouses ms ON s.id = ms.storehouses_id - LEFT JOIN public.sweets sw ON sw.manufacturer_id = ms.manufacturers_id  GROUP BY s.name HAVING COUNT (sw.id) > 8; Сначала сгруппируем сладости по складам, а затем через условие HAVING найдем те, у которых количество сладостей больше 8*|DML|
|SUM, MAX, MIN, AVG|Сумма значений, максимальное, минимальное, среднее значение|*SELECT SUM(id) FROM public.sweets; -SELECT MAX(id) FROM public.sweets; -SELECT MIN(id) FROM public.sweets; -SELECT AVG(id) FROM public.sweets* |DML|
|JOIN или INNER JOIN, LEFT JOIN, RIGHT JOIN|Объединение двух таблиц|*SELECT * FROM public.sweets - JOIN public.sweets_types st ON s.sweets_types_id = st.id -WHERE st.name = 'шоколад'* |DML|
|UNION, UNION ALL|вертикальное обединение|UNION, UNION ALL|DML|


