       IDENTIFICATION DIVISION.
       PROGRAM-ID. BANCO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 Cuenta.
               05 Nombre PIC X(15) VALUE SPACE.
               05 TipoCuenta PIC X(1) VALUE SPACE.
               05 NumeroCuenta PIC X(8) VALUE SPACE.
               05 Saldo PIC 9(9) VALUE ZEROS.
               05 UsuarioN PIC X(1) VALUE "S".
           77  CONTADOR PIC 9(5) VALUE 1.
           77  Opcion PIC 9(9) VALUE ZERO.
       PROCEDURE DIVISION.
       Main.

           DISPLAY "Digita una Opcion"
           ACCEPT Opcion.

           EVALUATE Opcion
               WHEN 1
                   PERFORM CreaCuenta
                   PERFORM Main
               WHEN 2
                   DISPLAY "2"
                   STOP RUN

           END-EVALUATE.

       CreaCuenta.
           DISPLAY "-----CREAR CUENTA-----".
           DISPLAY "Ingrese su Nombre.".
           ACCEPT Nombre.
           IF Nombre = Nombre AND UsuarioN = "S" THEN
               DISPLAY "Bienvenido al Banco ", Nombre
               MOVE "N" TO UsuarioN
               DISPLAY "Ingrese el tipo de cuenta."
               ACCEPT TipoCuenta
           ELSE
               DISPLAY Nombre, " ya cuentas con una cuenta"
           END-IF.

       END PROGRAM BANCO.
