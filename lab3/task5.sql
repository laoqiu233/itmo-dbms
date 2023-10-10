-- Выведите таблицу со средним возрастом студентов во всех группах (Группа, Средний возраст), 
-- где средний возраст равен максимальному возрасту в группе 3100.

SELECT Н_УЧЕНИКИ.ГРУППА, AVG(EXTRACT(YEARS from age(LOCALTIMESTAMP,Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ))) as MEAN_AGE
FROM Н_УЧЕНИКИ
JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
GROUP BY Н_УЧЕНИКИ.ГРУППА
HAVING AVG(EXTRACT(YEARS from age(LOCALTIMESTAMP,Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ))) = (
    SELECT MAX(EXTRACT(YEARS from age(LOCALTIMESTAMP,Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)))
    FROM Н_УЧЕНИКИ
    JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
    WHERE Н_УЧЕНИКИ.ГРУППА = '3100'
)