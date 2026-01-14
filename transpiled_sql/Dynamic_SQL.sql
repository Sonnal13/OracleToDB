DECLARE VARIABLE v_table_name STRING ;

-- Dynamic SQL example
SET v_table_name = 'employees_backup';

BEGIN
EXECUTE IMMEDIATE 'ALTER TABLE ' || v_table_name || ' ADD bonus DECIMAL(10,2)';
END;
