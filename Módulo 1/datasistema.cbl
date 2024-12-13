       IDENTIFICATION DIVISION.
       PROGRAM-ID. datasistema.
      ****************************
      * ÁREA DE COMENTÁRIOS
      * AUTOR = LUCAS
      * OBJETIVO = RECEBER E IMPRIMIR DATA COM VARIÁVEL TABELA - OCCURS
      * DATA = 12/12/2024
      ****************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           03 WRK-MES PIC X(09) OCCURS 12 TIMES.
       01 WRK-DATA.
           02 WRK-ANOSYS PIC 9(04) VALUE ZEROES.
           02 WRK-MESSYS PIC 9(02) VALUE ZEROES.
           02 WRK-DIASYS PIC 9(02) VALUE ZEROES.

       PROCEDURE DIVISION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-MONTAMES.
           PERFORM 0300-PROCESSAR.
           STOP RUN.
           
       0100-INICIALIZAR.
      * RECEBER VALORES
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.

       0200-MONTAMES.
           MOVE 'JANEIRO' TO WRK-MES(01).
           MOVE 'FEVEREIRO' TO WRK-MES(02).
           MOVE 'MARÇO' TO WRK-MES(03).
           MOVE 'ABRIL' TO WRK-MES(04).
           MOVE 'MAIO' TO WRK-MES(05).
           MOVE 'JUNHO' TO WRK-MES(06).
           MOVE 'JULHO' TO WRK-MES(07).
           MOVE 'AGOSTO' TO WRK-MES(08).
           MOVE 'SETEMBRO' TO WRK-MES(09).
           MOVE 'OUTUBRO' TO WRK-MES(10).
           MOVE 'NOVEMBRO' TO WRK-MES(11).
           MOVE 'DEZEMBRO' TO WRK-MES(12).
   
       0300-PROCESSAR.
           DISPLAY '________________________'
           DISPLAY 'DATA: ' WRK-DIASYS ' DE ' WRK-MES(WRK-MESSYS)
      -    ' DE ' WRK-ANOSYS.
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
