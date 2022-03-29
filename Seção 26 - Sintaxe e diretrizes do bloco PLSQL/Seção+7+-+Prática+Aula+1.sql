--
-- Seção 7 - Sintaxe e Diretrizes de um Bloco PL/SQL
--
-- Aula 1 - Sintaxe e Diretrizes de um Bloco PL/SQL
--

-- Comentando o c�digo

SET SERVEROUTPUT ON
DECLARE
  vNumero1  NUMBER(13,2);  -- Declaração de vari�vel para o Primeiro número
  vNumero2  NUMBER(13,2);  -- Declaração de vari�vel para o Segundo número
  vMedia    NUMBER(13,2);  -- Declaração de vari�vel para receber a Media calculada
BEGIN
  /* Callculo do valor da m�dia entre dois números
     Autor: Mauricio Vieira
     Data: 29/03/2022 */
	 
  vNumero1  :=  8000;
  vNumero2  :=  4000;
  vmedia    := (vNumero1 + vNumero2) / 2;           -- Cálculo da Media entre os dois números  
  DBMS_OUTPUT.PUT_LINE('vnumero1 = ' || vNumero1);  -- Impressão do Primeiro Número
  DBMS_OUTPUT.PUT_LINE('vnumero2 = ' || vNumero2);  -- Impressão do Segundo Número
  DBMS_OUTPUT.PUT_LINE('Media = ' || vMedia);     -- Impressão da Média calculada 
END;


