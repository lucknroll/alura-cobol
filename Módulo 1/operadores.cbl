       IDENTIFICATION DIVISION.
       PROGRAM-ID. operadores.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = OPERADORES ARITMÉTICOS COM USO DE SINAL
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM-1 PIC 9(02) VALUE ZEROES.
       77 WRK-NUM-2 PIC 9(02) VALUE ZEROES.
       77 WRK-RESUL PIC S9(04) VALUE ZEROES.
       77 WRK-RESUL-ED PIC -ZZZZ VALUE ZEROES.
       77 WRK-RESTO PIC 9(02) VALUE ZEROES.
       77 WRK-RESTO-ED PIC Z9 VALUE ZEROES.

       PROCEDURE DIVISION.
      ************************* RECEBER VALORES
	   ACCEPT WRK-NUM-1 FROM CONSOLE.
           ACCEPT WRK-NUM-2 FROM CONSOLE.
           DISPLAY 'NUMERO1: ' WRK-NUM-1.
           DISPLAY 'NUMERO2: ' WRK-NUM-2.
           DISPLAY '===================='.
      ************************** EXECUTAR SOMA
	   ADD WRK-NUM-1 WRK-NUM-2 TO WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SOMA: ' WRK-RESUL-ED.
      ************************** EXECUTAR SUBTRAÇÃO
           SUBTRACT WRK-NUM-2 FROM WRK-NUM-1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
       	   DISPLAY 'SUBTRAÇÃO: ' WRK-RESUL-ED.
      *     DISPLAY 'SUBTRAÇÃO: ' WRK-RESUL.
      ************************** EXECUTAR DIVISÃO
           DIVIDE WRK-NUM-1 BY WRK-NUM-2 GIVING WRK-RESUL
             REMAINDER WRK-RESTO.
             MOVE WRK-RESTO TO WRK-RESTO-ED.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'DIVISÃO :' WRK-RESUL-ED ' COM RESTO' WRK-RESTO-ED.
      ************************** EXECUTAR MULTIPLICAÇÃO
           MULTIPLY WRK-NUM-1 BY WRK-NUM-2 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'MULTIPLICAÇÃO :' WRK-RESUL-ED
      ************************** EXECUTAR EXPRESSÃO (MÉDIA)
           COMPUTE WRK-RESUL = (WRK-NUM-1 + WRK-NUM-2) / 2.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'MÉDIA :' WRK-RESUL-ED.
           STOP RUN.


