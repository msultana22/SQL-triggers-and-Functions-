SELECT * FROM synthea.MahbubaS_abcdefgh;
 CREATE TRIGGER Gender BEFORE INSERT ON account
       FOR EACH ROW SET @Gender = @Gender + NEW.Gender;