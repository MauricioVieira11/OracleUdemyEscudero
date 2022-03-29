--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 1 - Definindo Identificadores – Variáveis
--
-- 

-- Declarando Variáveis 

-- Declarando uma variável Tipo NUMBER

SET SERVEROUTPUT ON 
DECLARE
  vNumero    NUMBER(11,2) := 1200.50;
  
BEGIN
  DBMS_OUTPUT.PUT_LINE('Numero = ' ||   vNumero);

END;

-- Declarando variáveis Tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON -- nem precisa, pois j� est� habilitado na se��o feita anteriormente
DECLARE
  vCaracterTamFixo     CHAR(2) := 'RS';
  vCaracterTamVariavel VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Vari�vel = ' || vCaracterTamVariavel );
  
END;

-- Declarando variáveis Tipo DATE

SET SERVEROUTPUT ON -- nem precisa, pois j� est� habilitado na se��o feita anteriormente
DECLARE
  vData1     DATE := '29/04/20'; --convers�o impl�cita de data, opis o oracle entende o formato string para data
  vData2     DATE := '29/04/2020'; --convers�o impl�cita de data, opis o oracle entende o formato string para data
BEGIN
  DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1 );
  DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2 );
END;