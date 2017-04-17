UPDATE t_surplus SET volume = '0'
  WHERE id_surplus = '1';

UPDATE t_employer
  SET BIRTHDATE = '1.2.3', MARRIAGE = '1'
  WHERE id_employer = '3';

UPDATE t_caterer SET phone = '12345'
  WHERE id_caterer = '3';

UPDATE t_inprice SET price = price * 0.15
  WHERE price_date >= '5.5.5';
