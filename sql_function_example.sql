Create or replace function iva(costo IN NUMBER)
Return number is 
iva_v Number(11,2); 
BEGIN   
    SELECT COSTO * 0.15 INTO iva_v
    FROM DUAL; 
    RETURN(iva_v);
    END; 
/

SELECT iva (100) FROM DUAL;

DROP FUNCTION iva;


INSERT INTO employee VALUES ('James', 'E', 'Borg','888665555','10-NOV-1937', '450 Stone, Houston, TX', 'M', 55000, null,null);
COMMIT;






