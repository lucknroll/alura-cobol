       IDENTIFICATION DIVISION.
       PROGRAM-ID. projeto_final.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER E IMPRIMIR DATA COM VARIÁVEL TABELA - REDEFINES
      * DATA = 12/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'book_final.cbl'.

       PROCEDURE DIVISION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR UNTIL WRK-VALOR = -1.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
           
       0100-INICIALIZAR.
           DISPLAY ' '.
           DISPLAY '========================'.
           DISPLAY 'EXTRATO DE VENDAS DO ANO'.
           DISPLAY '========================'.

       0200-PROCESSAR.
           DISPLAY 'INFORMAR VALOR DE VENDA:'.
           ACCEPT WRK-VALOR FROM CONSOLE.
           IF WRK-VALOR = -1
               GO TO 0300-FINALIZAR
           END-IF.
           DISPLAY 'INFORMAR MÊS DE VENDA (MM):'.
           ACCEPT WRK-MESVENDA FROM CONSOLE.
           IF WRK-MESVENDA > 0 AND WRK-MESVENDA < 13
               ADD WRK-VALOR TO WRK-MES(WRK-MESVENDA)
               MOVE WRK-VALOR TO WRK-VALOR-ED
               DISPLAY 'RECEBIDO ' WRK-VALOR-ED ' EM ' WRK-MES-EXTENSO
      -    (WRK-MESVENDA)
           ELSE
               DISPLAY 'MÊS INVÁLIDO. DIGITE UM VALOR ENTRE 01 E 12'
           END-IF.

       0300-FINALIZAR.
           DISPLAY '========================'.
           PERFORM VARYING WRK-MESVENDA FROM 1 by 1
               UNTIL WRK-MESVENDA > 12
               DISPLAY 'VALOR ' WRK-MES-EXTENSO(WRK-MESVENDA) '...' WRK-
      -    MES(WRK-MESVENDA)
           END-PERFORM.
           DISPLAY '======================='    
           DISPLAY 'FINAL DE PROCESSAMENTO'.
