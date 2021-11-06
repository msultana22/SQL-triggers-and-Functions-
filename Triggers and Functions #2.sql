#creating a Trigger
delimiter $$
CREATE TRIGGER MahbubaS_Systolic BEFORE INSERT ON clinical_data 
FOR EACH ROW 
BEGIN
IF NEW.SYSTOLIC >= 300 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR: Systolic BP MUST BEBELOW 300mg!'
END IF;
END; $$

delimiter ;


## creating a Function
DELIMITER $$
CREATE FUNCTION overnightCost(
cost DECIMAL(10,2)
)
RETURNS VARCHAR(20)
BEGIN
DECLARE overnightCost VARCHAR(20)
IF cost > 1000 THEN
SET overnightCost = 'expensive';

ELSEIF cost < 1000 THEN
SET overnightCost = 'inexpensive';
END IF;
-- return the overnight cost category
RETURN (overnightCost);
END; $$ 








