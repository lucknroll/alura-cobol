       IDENTIFICATION DIVISION.
       PROGRAM-ID. investimento.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER VALORES DE INVESTIMENTO, TAXA E MOSTRA RETORNO
      * DATA = 12/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'book.cbl'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
      * RECEBER VALORES
           DISPLAY '________________________'.
           DISPLAY 'ENTRE COM O VALOR INVESTIDO:'.
       	   ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'ENTRE COM A QUANTIDADE DE MESES:'.
           ACCEPT WRK-MESES FROM CONSOLE.
           DISPLAY 'ENTRE COM A TAXA MENSAL:'
           ACCEPT WRK-TAXAMES FROM CONSOLE.
           DISPLAY '________________________'.
       0200-PROCESSAR.
           PERFORM WRK-MESES TIMES
               COMPUTE WRK-VALOR = WRK-VALOR * (WRK-TAXAMES / 100 + 1)
           END-PERFORM.
       0300-FINALIZAR.
           MOVE WRK-VALOR TO WRK-VALOR-ED.
           DISPLAY 'VALOR FINAL: R$' WRK-VALOR-ED.
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
