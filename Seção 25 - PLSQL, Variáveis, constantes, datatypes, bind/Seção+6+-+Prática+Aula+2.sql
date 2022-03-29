--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 2 - Definindo Identificadores – Constantes
--
-- 

-- Declarando Constantes

-- Declarando uma Constante Tipo NUMBER
--obs: se definor uma constante no declare e depois tentar modificar no begin haver� um erro. n�o pode mudar a constante
SET SERVEROUTPUT ON
DECLARE
  vPi    CONSTANT NUMBER(38,15) := 3.141592653589793;
  
BEGIN
  DBMS_OUTPUT.PUT_LINE('Pi = ' ||   vPi);

END;

-- Declarando Constante Tipo CHAR e VARCHAR2

SET SERVEROUTPUT ON
DECLARE
  vCaracterTamFixo     CONSTANT CHAR(2) := 'RS';
  vCaracterTamVariavel CONSTANT VARCHAR2(100) := 'Porto Alegre, RS';
BEGIN
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Fixo = ' || vCaracterTamFixo );
  DBMS_OUTPUT.PUT_LINE('String Caracteres Tam Variável = ' || vCaracterTamVariavel );
  
END;

-- Declarando variáveis Tipo DATE

SET SERVEROUTPUT ON
DECLARE
  vData1     DATE := '29/04/20';
  vData2     DATE := '29/04/2020';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Data1 = ' || vData1 );
  DBMS_OUTPUT.PUT_LINE('Data2 = ' || vData2 );
END;