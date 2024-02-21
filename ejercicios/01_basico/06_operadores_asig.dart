main () {

  // Operadores de asignacion

  int a = 1;
  int b = 0;

  b ??= 20; // Asigna el valor unicamente si la variable es null
  int d = b ?? a; // Indica que si b es nulo asigne el valor de a

  print(b);
}