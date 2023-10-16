-- Script that creates a trigger that rests the attribute
-- valid_email only when the email has been changed.
DELIMIITER $$ ;
CREATE TRIGGER validate BEFORE UPDATE ON users
FOR EACH ROW
BEGIn
	IF NEW.email != OLD.email THEN
		SET NEW.valid_email = 0;
	END IF;
END;$$
delimiter ;
