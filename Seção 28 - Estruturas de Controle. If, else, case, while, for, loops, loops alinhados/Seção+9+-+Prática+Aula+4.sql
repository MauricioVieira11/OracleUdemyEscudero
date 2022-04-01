--
-- Seção 9 - Estruturas de Controle 
--
-- Aula 4 - LOOP Básico
--

-- LOOP Básico

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '
DECLARE
  vNumero  NUMBER(38) := 1;
  vLimite  NUMBER(38) := &pLimite;
BEGIN
-- Imprimindo números de 1 até o limite
LOOP 
  DBMS_OUTPUT.PUT_LINE('Número = ' || to_char(vNumero));
  EXIT WHEN vNumero = vLimite; --se a fun��o for verdadeira ele sair� do loop, se for falsa, retonar� ao loop
  vNumero := vNumero + 1;
END LOOP;
END;

