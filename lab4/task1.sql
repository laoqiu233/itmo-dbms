-- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
-- Таблицы: Н_ОЦЕНКИ, Н_ВЕДОМОСТИ.
-- Вывести атрибуты: Н_ОЦЕНКИ.ПРИМЕЧАНИЕ, Н_ВЕДОМОСТИ.ЧЛВК_ИД.
-- Фильтры (AND):
-- a) Н_ОЦЕНКИ.ПРИМЕЧАНИЕ = неудовлетворительно.
-- b) Н_ВЕДОМОСТИ.ИД > 1250981.
-- Вид соединения: INNER JOIN.

SELECT Н_ОЦЕНКИ.ПРИМЕЧАНИЕ, Н_ВЕДОМОСТИ.ЧЛВК_ИД
FROM Н_ОЦЕНКИ
JOIN Н_ВЕДОМОСТИ
ON Н_ВЕДОМОСТИ.ОЦЕНКА = Н_ОЦЕНКИ.КОД
WHERE Н_ОЦЕНКИ.ПРИМЕЧАНИЕ = 'неудовлетворительно'
AND Н_ВЕДОМОСТИ.ИД > 1250981;

-- WHERE (Н_ОЦЕНКИ.ПРИМЕЧАНИЕ = 'неудовлетворительно' OR Н_ОЦЕНКИ.ПРИМЕЧАНИЕ = 'удовлетворительно') -- interesting changes in plan
