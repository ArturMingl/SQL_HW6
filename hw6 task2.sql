/* Выведите только четные числа от 1 до 10. 
Пример: 2,4,6,8,10 */

DROP PROCEDURE IF EXISTS numbers;

DELIMITER //

CREATE PROCEDURE numbers()
BEGIN
	DECLARE n INT DEFAULT 2;
	DECLARE result VARCHAR(10) DEFAULT '';

	WHILE n <= 10 DO
		SET result = CONCAT(result, CAST(n AS CHAR), ' '); 
		SET n = n + 2;
	END WHILE;
    
    Select result;
END//

DELIMITER ;

-- проверка
CALL numbers();
    