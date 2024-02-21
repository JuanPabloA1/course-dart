import 'dart:ffi';

main () {

  // Operadores de asignacion

  int a = 1;
  int b = 0;

  b ??= 20; // Asigna el valor unicamente si la variable es null
  int d = b ?? a; // Indica que si b es nulo asigne el valor de a

  print(b);

  // Operadores relacionales
  // Todos retornan un valor booleano

  int i = 10;
  String j = '10';

  print( i is int ); // Sirven para ejecutar tipos en tiempo de ejecucion 
  print( j is int );
  
  print( i is! int);

}