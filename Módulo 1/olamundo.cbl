       IDENTIFICATION DIVISION.
       PROGRAM-ID. olamundo.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = 
      * DATA = 11/12/2024
      ****************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROES.
	   02 WRK-MES PIC 9(02) VALUE ZEROES.
	   02 WRK-DIA PIC 9(02) VALUE ZEROES.	

       PROCEDURE DIVISION.
	   ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA: ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.


