--
-- Seção 18 
-- Criando e Gerenciando Sequencias
--
-- Aula 1 - Criando e Gerenciando Sequencias
--

-- Criando uma Sequencia

SELECT MAX(employee_id)
FROM   employees;

DROP SEQUENCE employees_seq;
--maior n�mero empregados
CREATE SEQUENCE employees_seq
START WITH 210 -- come�ar a partir do registro 210
INCREMENT BY 1 --incremento 1 em 1
NOMAXVALUE 
NOCACHE
NOCYCLE;

-- Consultando Sequencias do pelo Dicionario de Dados

SELECT  *
FROM    user_sequences;

-- Recuperando próximo valor da Sequencia

SELECT employees_seq.NEXTVAL
FROM   dual;

-- Recuperando o valor corrente da Sequencia

SELECT employees_seq.CURRVAL
FROM   dual;

-- Removendo uma Sequencia 

DROP SEQUENCE employees_seq;

-- Recriando uma Sequencia
-- para voltar ao n�meor original da sequence, tem que apagar ela e come�ar de novo
CREATE SEQUENCE employees_seq
START WITH 210
INCREMENT BY 1
NOMAXVALUE 
NOCACHE
NOCYCLE;

-- Utilizando uma Sequencia 

INSERT INTO employees 
           (employee_id, first_name, last_name, email, 
            phone_number, hire_date, job_id, salary,
            commission_pct, manager_id, department_id)
       VALUES (employees_seq.nextval, 'Paul', 'Simon', 'PSIMO', 
               '525.342.237', TO_DATE('12/02/2020', 'DD/MM/YYYY'), 'IT_PROG', 15000,
               NULL, 103, 60);

SELECT *
FROM employees
ORDER BY employee_id DESC;

COMMIT;

-- Modificando uma Sequencia
-- cache de 20 n�meros de mem�ria, ganho de performance
ALTER SEQUENCE employees_seq
MAXVALUE 999999
CACHE 20;