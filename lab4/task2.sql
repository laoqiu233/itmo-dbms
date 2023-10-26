-- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
-- Таблицы: Н_ЛЮДИ, Н_ВЕДОМОСТИ, Н_СЕССИЯ.
-- Вывести атрибуты: Н_ЛЮДИ.ОТЧЕСТВО, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.УЧГОД.
-- Фильтры (AND):
-- a) Н_ЛЮДИ.ИМЯ > Владимир.
-- b) Н_ВЕДОМОСТИ.ДАТА = 2010-06-18.
-- c) Н_СЕССИЯ.ДАТА = 2012-01-25.
-- Вид соединения: RIGHT JOIN.

SELECT Н_ЛЮДИ.ОТЧЕСТВО, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.УЧГОД
FROM Н_ЛЮДИ
RIGHT JOIN Н_ВЕДОМОСТИ ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
RIGHT JOIN Н_СЕССИЯ ON Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ИМЯ > 'Владимир'
AND Н_ВЕДОМОСТИ.ДАТА = '2010-06-18'
AND Н_СЕССИЯ.ДАТА = '2012-01-25';

-- Индексы
CREATE INDEX н_люди_имя ON Н_ЛЮДИ USING btree (ИМЯ);
CREATE INDEX н_ведомости_дата ON Н_ВЕДОМОСТИ USING btree (ДАТА);
CREATE INDEX н_сессия_дата ON Н_СЕССИЯ USING btree (ДАТА);
CREATE INDEX н_люди_ид ON Н_ЛЮДИ USING HASH (ИД);