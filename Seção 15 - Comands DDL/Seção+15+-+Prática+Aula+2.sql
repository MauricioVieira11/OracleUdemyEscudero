--
-- Seção 15 
-- Comandos DDL 
--
-- Aula 2 - Alterando a Estrutura da Tabela
--

-- ALTER TABLE – Adicionando uma coluna

ALTER TABLE projects
ADD (department_id NUMBER(3)); 

DESC projects

-- ALTER TABLE – Removendo uma coluna

ALTER TABLE projects
DROP COLUMN department_id; 

DESC projects

-- ALTER TABLE – Adicionando uma coluna

ALTER TABLE projects
ADD (department_id NUMBER(4) NOT NULL); 

DESC projects

-- ALTER TABLE – Adicionando uma coluna
-- modificndo colunas
ALTER TABLE projects
MODIFY (project_code VARCHAR2(6));
                             
DESC PROJECTS
               
-- ALTER TABLE – Renomeando uma coluna

ALTER TABLE projects
RENAME COLUMN project_name TO name;

DESC projects

-- ALTER TABLE – READ ONLY, ela n�o permite comando DDL e DML
--
ALTER TABLE employees READ ONLY;

-- ALTER TABLE – READ WRITE, ela permite comando DDL e DML

ALTER TABLE employees READ WRITE;