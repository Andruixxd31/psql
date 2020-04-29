CREATE OR REPLACE TRIGGER ValidarRenta
    BEFORE INSERT ON rentalagreement
    FOR EACH ROW
BEGIN
    IF :new.datereturn IS NOT NULL
    THEN  
    UPDATE videoforrent
    SET available = 1
    WHERE videono = :new.videono;
    ELSE
    UPDATE videoforrent
    SET available = 0
    WHERE videono = :new.videono;
     raise_application_error(-20000,'El video no a sido devuelto');
    END IF;
END;

CREATE OR REPLACE TRIGGER dependiente
    BEFORE INSERT ON dependent
    FOR EACH ROW 
 DECLARE
    x NUMBER;x
 BEGIN 
    SELECT COUNT(*) INTO x FROM DEPENDENT d
    WHERE d.essn=new.essn;
    IF X<3 THEN
     UPDATE Employee
     SET salary=salary+100
     WHERE ssn=new.essn;
    ELSE
     raise_applciation_error(-20000,'Demasiados dependientes');
    END IF;
 END;
/