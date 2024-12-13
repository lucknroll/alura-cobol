       IDENTIFICATION DIVISION.
       PROGRAM-ID. tabuada.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER UM NÚMERO E GERAR A TABUADA DE 1 A 10 COM PERFORM
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02)   VALUE ZEROES.
       77 WRK-CONTADOR PIC 9(02)   VALUE 1.
       77 WRK-RESUL    PIC 9(02)   VALUE ZEROES.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           ELSE
               DISPLAY 'TABUADA DE ZERO'
           END-IF.    
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
      * RECEBER VALORES
           DISPLAY 'ENTRE COM O NÚMERO DESEJADO:'
       	   ACCEPT WRK-NUMERO FROM CONSOLE.
           DISPLAY '________________________'.
       0200-PROCESSAR.
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                   UNTIL WRK-CONTADOR > 10
               COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               DISPLAY WRK-NUMERO 'x' WRK-CONTADOR '=' WRK-RESUL
           END-PERFORM.
       0300-FINALIZAR.
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
