import 'dart:collection';

main() {

  Queue queue = new Queue();
  queue.addAll([10, 20, 30, 40, 50]);

  print(queue);
  // ignore: unnecessary_type_check
  print(queue is Queue);

  /**
   * La interfaz básica de un Iterator en Dart incluye dos métodos principales:
   * 
   * current: Devuelve el elemento actual al que apunta el iterador.
   * 
   * moveNext(): Mueve el iterador al siguiente elemento en 
   * la secuencia y devuelve un booleano que indica 
   * si hay más elementos o no.
   */
  Iterator i = queue.iterator;

  while( i.moveNext() ) {
    print( i.current );
  }
}