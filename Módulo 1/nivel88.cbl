       IDENTIFICATION DIVISION.
       PROGRAM-ID. freteevaluate.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = APRENDER VARIAVEL NIVEL 88
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO  PIC X(20)        VALUE SPACES.	
       77 WRK-NIVEL    PIC 9(02)        VALUE ZEROES.
           88 ADM     VALUE 01.
           88 USER    VALUE 02.

       PROCEDURE DIVISION.
      ************************* RECEBER VALORES
           DISPLAY 'ENTRE COM O NOME DO USUÁRIO:'.
	   ACCEPT WRK-USUARIO FROM CONSOLE.
	   DISPLAY 'ENTRE COM O NÍVEL DO USUÁRIO:'.
           ACCEPT WRK-NIVEL FROM CONSOLE.

	   IF ADM
               DISPLAY 'NÍVEL - ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NÍVEL - USUÁRIO'
               ELSE
                   DISPLAY 'USUÁRIO NÃO AUTORIZADO'
               END-IF
           END-IF.

           STOP RUN.


