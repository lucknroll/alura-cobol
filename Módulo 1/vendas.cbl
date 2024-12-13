       IDENTIFICATION DIVISION.
       PROGRAM-ID. operadores.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER DUAS VENDAS E OBTER SUA MÉDIA FORMATADA
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM-1 PIC 9(04)V99 VALUE ZEROES.
       77 WRK-NUM-2 PIC 9(04)V99 VALUE ZEROES.
       77 WRK-RESUL PIC 9(04)V99 VALUE ZEROES.
       77 WRK-RESUL-ED PIC $ZZZ.ZZ9,99 VALUE ZEROES.

       PROCEDURE DIVISION.
      ************************* RECEBER VALORES
	   ACCEPT WRK-NUM-1 FROM CONSOLE.
           ACCEPT WRK-NUM-2 FROM CONSOLE.
           DISPLAY '===================='.
      ************************** EXECUTAR SOMA
	   ADD WRK-NUM-1 WRK-NUM-2 TO WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'TOTAL: ' WRK-RESUL-ED.
      ************************** EXECUTAR EXPRESSÃO (MÉDIA)
           COMPUTE WRK-RESUL = WRK-RESUL / 2.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'MÉDIA: ' WRK-RESUL-ED.
           STOP RUN.


