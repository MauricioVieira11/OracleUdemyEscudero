--
-- Seção 12 
-- Utilizando Sub-Consultas
--
-- Aula 3 - Utilizando operador EXISTS e NOT EXISTS 
--

-- Utilizando operador EXISTS
--compara��o de igualdade de cada linha da consulta externa com a consulta interna
--ganha-se em performance utilizar o exits

SELECT d.department_id, d.department_name
FROM   departments d
WHERE  EXISTS
             (SELECT e.department_id
               FROM   employees e
               WHERE d.department_id = 
                             e.department_id);
							 
-- Utilizando operador EXISTS

SELECT d.department_id, d.department_name
FROM   departments d
WHERE  EXISTS (SELECT e.department_id
               FROM employees e
               WHERE d.department_id = e.department_id);

-- Utilizando operador NOT EXISTS

SELECT d.department_id, d.department_name
FROM   departments d
WHERE  NOT EXISTS (SELECT e.department_id
                   FROM employees e
                   WHERE d.department_id = e.department_id);
    
