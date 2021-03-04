--QUESTION 1
/*Escreva um programa que imprime cada n�mero de 1 at� 100 em uma nova linha.

Para cada m�ltiplo de 3, imprima "Foo", ao inv�s do n�mero.
Para cada m�ltiplo de 5, imprima "Baa", ao inv�s do n�mero.
Para n�meros m�ltiplos simultaneamente de 3 e 5, imprima "FooBaa", ao inv�s do n�mero.*/
SET SERVEROUTPUT ON
SET VERIFY OFF

BEGIN
  FOR x IN 1..100 LOOP
    /*VERIFICA MULTIPLOS DE 3 E 5*/
    IF (REMAINDER(x,3) = 0) AND (REMAINDER(x,5) = 0)
      THEN dbms_output.put_line('FooBaa');
    /*VERIFICA MULTIPLOS DE 3*/  
    ELSIF REMAINDER(x,3) = 0
      THEN dbms_output.put_line('Foo');
    /*VERIFICA MULTIPLOS DE 5*/  
    ELSIF REMAINDER(x,5) = 0
      THEN dbms_output.put_line('Baa');
    /*EXIBE O N�MERO QUE N�O ATENDE AS CONDI��ES ANTERIORES*/  
    ELSE 
       dbms_output.put_line(x);
    END IF;    
  END LOOP;  
END;
