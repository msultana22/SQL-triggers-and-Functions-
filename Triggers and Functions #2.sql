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

