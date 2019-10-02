SELECT 'ФИО: Новожилкин Никита Максимович';
 --1.1 SELECT , LIMIT - выбрать 10 записей из таблицы ratings (Для всех дальнейших запросов выбирать по 10 записей, если не указано иное)
SELECT * FROM ratings LIMIT 10;
-- 1.2 WHERE, LIKE - выбрать из таблицы links всё записи, у которых imdbid оканчивается на "42", а поле movieid между 100 и 1000
SELECT * from links WHERE (imdbid like '%42') AND (movieid BETWEEN 100 AND 1000);
--2.1 INNER JOIN выбрать из таблицы links все imdbId, которым ставили рейтинг 5
SElECT imdbid FROM links INNER JOIN ratings ON links.movieid = ratings.movieid WHERE rating = 5;
--3.1 COUNT() Посчитать число фильмов без оценок
SELECT COUNT(movieid) from ratings where rating = null;
--3.2 GROUP BY, HAVING вывести top-10 пользователей, у который средний рейтинг выше 3.5
SELECT userid from ratings group by userid HAVING AVG(rating) > 3.5 LIMIT 10;
--4.1 Подзапросы: достать любые 10 imbdId из links у которых средний рейтинг больше 3.5.
SElECT imdbid FROM links  WHERE movieid IN 
(SELECT movieid FROM ratings group by movieid HAVING AVG(rating)>3.5) LIMIT 10;
--4.2 Common Table Expressions: посчитать средний рейтинг по пользователям, у которых более 10 оценок. 
--Нужно подсчитать средний рейтинг по все пользователям, которые попали под условие - то есть в ответе должно быть одно число.
with sr_rating as (
	SELECT rating FROM ratings WHERE userid IN (SELECT userid FROM ratings group by userid HAVING COUNT(*)>10))
SELECT AVG(rating) FROM sr_rating;
