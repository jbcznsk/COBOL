       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEMPOCASA.
     

       ENVIRONMENT DIVISION.
       
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 WRK-NOME       PIC X(10).
           77 WRK-SALARIO    PIC 9(5)V99.
           01 WRK-DATAATUAL.
               02 WRK-ANO    PIC 9(4).
               02 WRK-MES    PIC 9(2).
               02 WRK-DIA    PIC 9(2).
           77 WRK-ANOENTRADA PIC 9(4).
           77 WRK-TEMPO      PIC 9(2).
       
       PROCEDURE DIVISION.
       0000-PRINCIPAL.
           PERFORM 0100-INICIAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

       STOP RUN.

       0100-INICIAR.
           ACCEPT WRK-DATAATUAL FROM DATE YYYYMMDD.
           DISPLAY 'NOME'.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'ANO ENTRADA'.
           ACCEPT WRK-ANOENTRADA FROM CONSOLE.
           DISPLAY 'SALARIO'.
           ACCEPT WRK-SALARIO FROM CONSOLE.
       0200-PROCESSAR.
           SUBTRACT WRK-ANOENTRADA FROM WRK-ANO GIVING WRK-TEMPO.

       
       0300-FINALIZAR.
           DISPLAY 'TEMPO DE CASA: ' WRK-TEMPO. 