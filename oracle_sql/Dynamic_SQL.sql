-- Dynamic SQL example
DECLARE
    v_table_name VARCHAR2(30) := 'employees_backup';
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE ' || v_table_name || ' ADD (bonus NUMBER(10,2))';
END;
/
