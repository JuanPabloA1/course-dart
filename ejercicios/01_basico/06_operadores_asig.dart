main () {

  // Operadores de asignacion

  int a = 1;
  int? b;

  b ??= 20; // Asigna el valor unicamente si la variable es null
  int d = b ?? a; // Indica que si b es nulo asigne el valor de a

  print(a);
  print(b);
  print(d);

  // Operadores relacionales
  // Todos retornan un valor booleano

  int i = 10;
  String j = '10';

  // ignore: unnecessary_type_check
  print( i is int ); // Sirven para ejecutar tipos en tiempo de ejecucion 
  print( j is int );
  
  // ignore: unnecessary_type_check
  print( i is! int);

}