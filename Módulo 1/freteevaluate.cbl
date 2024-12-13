       IDENTIFICATION DIVISION.
       PROGRAM-ID. freteevaluate.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER PRODUTO, VALOR E CALCULAR O FRETE
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO  PIC X(20)        VALUE SPACES.
       77 WRK-UF       PIC X(02)        VALUE SPACES.	
       77 WRK-VALOR    PIC 9(06)V99     VALUE ZEROES.
       77 WRK-FRETE    PIC 9(06)V99     VALUE ZEROES.
       77 WRK-FRETE-ED PIC ZZZ9,99  VALUE ZEROES.

       PROCEDURE DIVISION.
      ************************* RECEBER VALORES
           DISPLAY 'ENTRE COM O NOME DO PRODUTO:'.
	   ACCEPT WRK-PRODUTO FROM CONSOLE.
	   DISPLAY 'ENTRE COM O VALOR DO PRODUTO:'.
           ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'ENTRE COM A UF DE DESTINO:'.
           ACCEPT WRK-UF FROM CONSOLE.
           DISPLAY '===================='.
      ************************** VALOR DO FRETE
           EVALUATE WRK-UF
              WHEN 'SP'
                  COMPUTE WRK-FRETE = WRK-VALOR * 0,05
              WHEN 'RJ'
                  COMPUTE WRK-FRETE = WRK-VALOR * 0,1
              WHEN 'MG'
                  COMPUTE WRK-FRETE = WRK-VALOR * 0,15
              WHEN OTHER
                  COMPUTE WRK-FRETE = WRK-VALOR * 0,25
	   END-EVALUATE.
           MOVE WRK-FRETE TO WRK-FRETE-ED.
           DISPLAY 'ESTADO: ' WRK-UF.
           DISPLAY 'VALOR DO FRETE: R$' WRK-FRETE-ED.
           STOP RUN.


