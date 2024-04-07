void main(List<String> args) {
  
  List<int> l = [1,2,3,4,5];
  List<int>? l2 = []; // null.isEmpty
  List<int> l3 = [3,1,2,15,-10];
  List<String> name = ['Tony', 'Peter'];

  print('Length: ${ l.length }');
  print('Length: ${ l[0] }');
  print('First: ${l.first}');
  print('Last: ${ l.last }');

  print('isEmpty: ${ l.isEmpty }');
  print('isNotEmpty: ${ l.isNotEmpty }');
  print('isEmpty?: ${ l2.isEmpty }');
  print('asMap: ${ l.asMap() }'); // Transforma la lista a un mapa

  Map lMapa = l.asMap();
  print('ListaMapa: ${ lMapa[4] }');

  Map nameMap = name.asMap();
  print('NombreMapa: ${ nameMap }');
  print('NombreMapa: ${ nameMap[1] }');

  print('indexOf: ${ name.indexOf('Peter')}');

  int greaterTo3 = l.indexWhere( (n) => (n>3) ? true : false);

  print('indexWhere mayor 3: $greaterTo3'); // Devuelve la posicion en donde se encuentra

  print('Remove: ${ name.remove('Tony1') }');
  print('Remove: ${ name.remove('Tony') }');
  print('Remove: ${ name }');

  l.shuffle();// Revuelve la lista y manda un orden aleatorio
  print('Shuffle: $l');

  l3.sort();
  print('Sort: $l3');
  print('Reverse: ${l3.reversed}');// Este no devuelve una lista devuelve un iterable
  print('Reverse: ${l3.reversed.toList()}');

  name.forEach((e) { 
    e = e.toUpperCase();
    print(e);
  });

  print('Listado: $name'); // Aqui no imprime el nombre como UpperCase
  /**
   * Esto es porque los objetos en Dart son pasados por referencia
   */

  /** Pero cuando la almacenamos ya es otra historia */
  final newList = name.map((e) => e.toUpperCase()).toList();
  print('newList: $newList');
}