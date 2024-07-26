CREATE OR REPLACE TRIGGER trg_country_i
BEFORE INSERT
ON country
FOR EACH ROW
BEGIN
    SELECT seq_country_pk.NEXTVAL
    INTO :NEW.country_id
    FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_stamp_list_i
BEFORE INSERT
ON stamp_list
FOR EACH ROW
BEGIN
    SELECT seq_stamp_list_pk.NEXTVAL
    INTO :NEW.stamp_list_id
    FROM dual;
END;
/