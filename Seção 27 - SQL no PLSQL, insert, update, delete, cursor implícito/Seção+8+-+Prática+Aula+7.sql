---
-- Se√ß√£o 8 - Utilizando comandos SQL no PL/SQL
--
-- Aula 7 - Cursor Impl√≠cito
--

-- Utilizando atributos de Cursor Implito, quem controla o cursor È o prÛprio oracle

SET SERVEROUTPUT ON
DECLARE
   vdepartment_id  employees.department_id%type := 60;
   vpercentual     NUMBER(3) := 10;
BEGIN
   UPDATE employees 
   SET salary = salary * (1 + vpercentual / 100)
   WHERE department_id =  vdepartment_id;
   DBMS_OUTPUT.PUT_LINE('Numero de empregados atualizados: ' || SQL%ROWCOUNT);
   -- COMMIT;  
END;

ROLLBACK;