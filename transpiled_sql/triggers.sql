CREATE OR REPLACE TRIGGER trg_check_salary
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
IF :NEW.salary < 0 THEN
        raise Exception('Salary cannot be negative');
END IF
;
END;
