DELETE FROM t_inprice
WHERE price_date < '31.12.2000';

DELETE FROM t_messure
WHERE name LIKE '_';