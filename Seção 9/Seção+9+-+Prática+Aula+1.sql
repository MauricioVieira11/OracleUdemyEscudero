--
-- Seção 9 
-- Utilizando Funções de Conversão e Expressões Condicionais 
--
-- Aula 1
--

-- Utilizando a Função TO_CHAR com Datas

SELECT last_name,TO_CHAR(hire_date, 'DD/MM/YYYY  HH24:MI:SS') DT_ADMISS�O
FROM employees;

SELECT sysdate,TO_CHAR(sysdate, 'DD/MM/YYYY  HH24:MI:SS') DATA
FROM   dual;

SELECT last_name, TO_CHAR(hire_date, 'DD, "de" Month "de" YYYY') DT_ADMISS�O
FROM employees;

SELECT last_name, TO_CHAR(hire_date, 'FMDD, "de" Month "de" YYYY') DT_ADMISS�O
FROM employees;

-- Utilizando a Função TO_CHAR com Números

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

SELECT first_name, last_name, TO_CHAR(salary, 'L99G999G999D99') SALARIO
FROM employees;

-- Utilizando a Função TO_NUMBER

SELECT TO_NUMBER('12000,50')
FROM  dual;

-- Utilizando a Função TO_DATE

SELECT TO_DATE('06/02/2020','DD/MM/YYYY') DATA
FROM  dual;

SELECT first_name, last_name, hire_date
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando Funções Aninhadas

SELECT first_name, last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date),0) NUMERO_MESES
FROM   employees
WHERE  hire_date = TO_DATE('17/06/2003','DD/MM/YYYY');

-- Utilizando a Função NVL

SELECT last_name, salary, NVL(commission_pct, 0), salary*12 SALARIO_ANUAL, 
       (salary*12) + (salary*12*NVL(commission_pct, 0)) REMUNERACAO_ANUAL
FROM employees;

-- Utilizando a Função COALESCE

SELECT COALESCE(NULL, NULL, 'Expresssão 3'), COALESCE(NULL, 'Expressão 2', 'Expresssão 3'),
       COALESCE('Expressão 1', 'Expressão 2', 'Expresssão 3')
FROM dual;

SELECT last_name, employee_id, commission_pct, manager_id, 
       COALESCE(TO_CHAR(commission_pct),TO_CHAR(manager_id),
       'Sem percentual de comissão e sem gerente')
FROM employees;

-- Utilizando a Função NVL2

SELECT last_name, salary, commission_pct, 
       NVL2(commission_pct, 10, 0) PERCENTUAL_ATERADO
FROM employees;

-- Utilizando a Função NULLIF

SELECT NULLIF(1000,1000), NULLIF(1000,2000)
FROM dual;

SELECT first_name, last_name, LENGTH(first_name) "Expressão 1",
       LENGTH(last_name) "Expressão 2", NULLIF(LENGTH(first_name), LENGTH(last_name)) RESULTADO
FROM employees;

-- Expressão CASE

SELECT last_name, job_id, salary,
                          CASE job_id
                             WHEN 'IT_PROG'   
                               THEN 1.10*salary
                             WHEN 'ST_CLERK' 
                               THEN 1.15*salary
                             WHEN 'SA_REP' 
                               THEN 1.20*salary
                             ELSE salary 
                           END "NOVO SALARIO"
FROM employees;

-- Utilizando a Função DECODE

SELECT last_name, job_id, salary,
DECODE(job_id, 'IT_PROG' , 1.10*salary,
               'ST_CLERK', 1.15*salary,
               'SA_REP'  , 1.20*salary
                         , salary) "NOVO SALARIO"
FROM employees;