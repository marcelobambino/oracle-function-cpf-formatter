create or replace FUNCTION "CPF_FORMATTER"
 (CPF IN NUMBER)
 RETURN       		VARCHAR2 IS
 FORMATTED_CPF      VARCHAR2(14); -- RETORNO DA FUNCAO
BEGIN
   SELECT DECODE(CPF,
                 NULL,
                 '000.000.000-00',
                 regexp_replace(LPAD(CPF, 11, '0'), '([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})','\1.\2.\3-\4'))
     INTO FORMATTED_CPF
     FROM DUAL;
   RETURN FORMATTED_CPF;
END;
