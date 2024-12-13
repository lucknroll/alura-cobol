       IDENTIFICATION DIVISION.
       PROGRAM-ID. mostracpf.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER CPF E PRINTAR FORMATADO
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       77 WRK-CPF PIC X(11) VALUE ZEROES.
       77 WRK-CPF-ED PIC 999.999.999/99 VALUE ZEROES.	

       PROCEDURE DIVISION.
	   ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-CPF FROM CONSOLE.
      ************* MOSTRA DADOS
           DISPLAY 'NOME: ' WRK-NOME.
           MOVE WRK-CPF TO WRK-CPF-ED.
	   DISPLAY 'CPF: ' WRK-CPF-ED.
           STOP RUN.


