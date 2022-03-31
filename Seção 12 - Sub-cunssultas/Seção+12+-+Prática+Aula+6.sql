--
-- Seção 12 
-- Utilizando Sub-Consultas
--
-- Aula 6 - Utilizando Sub-Consultas na Cláusula FROM
--
		
-- Utilizando Sub-Consultas na Cláusula FROM

SELECT empregados.employee_id, empregados.first_name, empregados.last_name, empregados.job_id, 
       empregados.salary, ROUND(max_salary_job.max_salary,2) MAX_SALARY, empregados.salary - ROUND(max_salary_job.max_salary,2) DIFEREN�A
FROM   employees empregados
  LEFT JOIN (SELECT  e2.job_id, MAX(e2.salary) max_salary
             FROM     employees e2
             GROUP by e2.job_id) max_salary_job
       ON empregados.job_id = max_salary_job.job_id;