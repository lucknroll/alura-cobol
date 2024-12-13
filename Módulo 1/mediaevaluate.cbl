       IDENTIFICATION DIVISION.
       PROGRAM-ID. operadores.
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
      ************************* RECEBER VALORES
           DISPLAY 'ENTRE COM A NOTA 1:'
	   ACCEPT WRK-NOTA-1 FROM CONSOLE.
	   DISPLAY 'ENTRE COM A NOTA 2:'
           ACCEPT WRK-NOTA-2 FROM CONSOLE.
           DISPLAY '===================='.
      ************************** CALCULAR MÉDIA
           COMPUTE WRK-MEDIA = (WRK-NOTA-1 + WRK-NOTA-2) / 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MÉDIA: ' WRK-MEDIA-ED.
      ************************** APROVADO OU REPROVADO
           EVALUATE WRK-MEDIA
              WHEN 10
                  DISPLAY 'APROVADO COM BÔNUS'
	      WHEN 6 THRU 9,9
                  DISPLAY 'APROVADO'
              WHEN 2 THRU 5,9
                  DISPLAY 'RECUPERAÇÃO'
              WHEN OTHER
                  DISPLAY 'REPROVADO'
	   END-EVALUATE.
           STOP RUN.


