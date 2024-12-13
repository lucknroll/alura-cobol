       IDENTIFICATION DIVISION.
       PROGRAM-ID. datasistema_filler.
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
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.
       
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(03) OCCURS 12 TIMES.

       01 WRK-DATA.
           02 WRK-ANOSYS PIC 9(04) VALUE ZEROES.
           02 WRK-MESSYS PIC 9(02) VALUE ZEROES.
           02 WRK-DIASYS PIC 9(02) VALUE ZEROES.

       PROCEDURE DIVISION.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0300-PROCESSAR.
           STOP RUN.
           
       0100-INICIALIZAR.
      * RECEBER VALORES
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
   
       0300-PROCESSAR.
           DISPLAY '________________________'
           DISPLAY 'DATA: ' WRK-DIASYS ' DE ' WRK-MES(WRK-MESSYS)
      -    ' DE ' WRK-ANOSYS.
           DISPLAY '________________________'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
