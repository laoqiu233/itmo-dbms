-- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
-- Таблицы: Н_ЛЮДИ, Н_ОБУЧЕНИЯ, Н_УЧЕНИКИ.
-- Вывести атрибуты: Н_ЛЮДИ.ОТЧЕСТВО, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ИД.
-- Фильтры: (AND)
-- a) Н_ЛЮДИ.ИД < 163484.
-- b) Н_ОБУЧЕНИЯ.ЧЛВК_ИД > 105590.
-- Вид соединения: RIGHT JOIN.

SELECT Н_ЛЮДИ.ОТЧЕСТВО, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ИД
FROM   Н_ЛЮДИ 
RIGHT JOIN Н_ОБУЧЕНИЯ ON Н_ЛЮДИ.ИД = Н_ОБУЧЕНИЯ.ЧЛВК_ИД
RIGHT JOIN Н_УЧЕНИКИ ON Н_ОБУЧЕНИЯ.ЧЛВК_ИД = Н_УЧЕНИКИ.ЧЛВК_ИД AND Н_ОБУЧЕНИЯ.ВИД_ОБУЧ_ИД = Н_УЧЕНИКИ.ВИД_ОБУЧ_ИД
WHERE Н_ЛЮДИ.ИД < 163484
AND   Н_ОБУЧЕНИЯ.ЧЛВК_ИД > 105590