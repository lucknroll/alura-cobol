       IDENTIFICATION DIVISION.
       PROGRAM-ID. until.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER VALORES DE VENDA E EXECUTAR PERFORM UNTIL
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS   PIC 9(06)V99    VALUE ZEROES.
       77 WRK-QT       PIC 9(03)       VALUE ZEROES.
       77 WRK-ACUM     PIC 9(08)V99    VALUE ZEROS.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           ELSE
               DISPLAY 'ZERO VENDAS'
           END-IF.    
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
      * RECEBER VALORES
           DISPLAY 'ENTRE COM O VALOR DE VENDA:'.
           DISPLAY '________________________'.
       	   ACCEPT WRK-VENDAS FROM CONSOLE.
       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           ACCEPT WRK-VENDAS FROM CONSOLE.           
       0300-FINALIZAR.
           DISPLAY 'VALOR DAS VENDAS ACUMULADAS:' WRK-ACUM.
           DISPLAY 'QUANTIDADE DE ITENS VENDIDOS:' WRK-QT
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
