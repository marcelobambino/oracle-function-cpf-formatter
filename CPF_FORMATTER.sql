CREATE OR REPLACE FUNCTION "CPF_FORMATTER"
 (CPF IN NUMBER)
 RETURN       		VARCHAR2 IS
 FORMATTED_CPF      VARCHAR2(14);
BEGIN
   SELECT DECODE(CPF,
                 NULL,
                 '000.000.000-00',
                 REGEXP_REPLACE(LPAD(CPF, 11, '0'), '([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})','\1.\2.\3-\4'))
     INTO FORMATTED_CPF
     FROM DUAL;
   RETURN FORMATTED_CPF;
END;
