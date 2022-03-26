--
-- Seção 13 - Aula 1
-- Operadores SET
--
-- Aula 1 - Operadores SET
--

-- Utilizando o operador UNION 
-- tem que ter o mesmo n�mero de colunas para cada select do messmo tipo
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  department_id IN (60, 90, 100)
UNION
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  job_id = 'IT_PROG'
ORDER BY employee_id; --ordenar s� o resultado final, n�o pode ordenar antes no primeiro select

-- Utilizando o operador UNION ALL

SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  job_id = 'IT_PROG'
UNION ALL -- preserva as duplicidades das tuplas(linhas), masi r�pido do que os outros
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  department_id = 60
ORDER BY employee_id;

-- Utilizando operador INTERSECT

SELECT employee_id, job_id
FROM   employees
WHERE  job_id = 'IT_PROG'
INTERSECT -- retornas as linhas comuns(interse��o entre os dois selects)
SELECT employee_id, job_id
FROM   employees
WHERE  department_id IN (60, 90, 100)
ORDER BY employee_id;

-- Utilizando operador MINUS

SELECT employee_id, job_id
FROM   employees
WHERE  department_id IN (60, 90, 100)
MINUS -- resultado do primeiro select menos(que n�o est�o no segundo select) o resultado do segundo select
SELECT employee_id, job_id
FROM   employees
WHERE  job_id = 'IT_PROG'
ORDER BY employee_id;

-- Cuidados com os tipos de dados na lista de colunas ou expressões do SELECT
--deu ero no c�digo pq as colunas dos dois selects tem tipos diferentes
SELECT employee_id, job_id, hire_date
FROM   employees
WHERE  department_id IN (60, 90, 100)
UNION
SELECT employee_id, job_id, salary
FROM   employees
WHERE  job_id = 'IT_PROG'
ORDER BY employee_id;

-- Corrigindo o erro
--corre��o do c�gigo de cima
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  department_id IN (60, 90, 100)
UNION
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  job_id = 'IT_PROG'
ORDER BY employee_id;

-- Utilizando mais de um operador SET

SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  department_id IN (60, 90, 100)
UNION
(SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  job_id = 'IT_PROG'
INTERSECT
SELECT employee_id, job_id, hire_date, salary
FROM   employees
WHERE  salary > 10000)
ORDER BY employee_id;