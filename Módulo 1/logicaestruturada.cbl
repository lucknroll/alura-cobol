       IDENTIFICATION DIVISION.
       PROGRAM-ID. logicaestruturada.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER DUAS NOTAS, MÉDIA E MOSTRAR APROVADO OU REPROVADO
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA-1   PIC 9(02)V9   VALUE ZEROES.
       77 WRK-NOTA-2   PIC 9(02)V9   VALUE ZEROES.
       77 WRK-MEDIA    PIC 9(02)V9 VALUE ZEROES.
       77 WRK-MEDIA-ED PIC Z9,99   VALUE ZEROES.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA-1 > 0 AND WRK-NOTA-2 > 0
               PERFORM 0200-PROCESSAR
           ELSE
               DISPLAY 'UMA DAS NOTAS É ZERO'
           END-IF.    
           PERFORM 0300-FINALIZAR.
           STOP RUN.

       0100-INICIALIZAR.
      * RECEBER VALORES
           DISPLAY 'ENTRE COM A NOTA 1:'
       	   ACCEPT WRK-NOTA-1 FROM CONSOLE.
       	   DISPLAY 'ENTRE COM A NOTA 2:'
           ACCEPT WRK-NOTA-2 FROM CONSOLE.
           DISPLAY '________________________'.

       0200-PROCESSAR.
      * CALCULAR MÉDIA
           COMPUTE WRK-MEDIA = (WRK-NOTA-1 + WRK-NOTA-2) / 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MÉDIA: ' WRK-MEDIA-ED.
      * APROVADO OU REPROVADO
           IF WRK-MEDIA >= 7
	       DISPLAY 'APROVADO'
           ELSE
               IF WRK-MEDIA >= 5
                   DISPLAY 'EM RECUPERAÇÃO'               
               ELSE
                   DISPLAY 'REPROVADO'
               END-IF
           END-IF.

       0300-FINALIZAR.
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
