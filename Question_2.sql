--QUESTION 1
/*Escreva um programa que imprime cada número de 1 até 100 em uma nova linha.

Para cada múltiplo de 3, imprima "Foo", ao invés do número.
Para cada múltiplo de 5, imprima "Baa", ao invés do número.
Para números múltiplos simultaneamente de 3 e 5, imprima "FooBaa", ao invés do número.*/
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
    /*EXIBE O NÚMERO QUE NÃO ATENDE AS CONDIÇÕES ANTERIORES*/  
    ELSE 
       dbms_output.put_line(x);
    END IF;    
  END LOOP;  
END;
