void main(List<String> args) {
  
  final person = {
    'name': 'Juan Pablo',
    'lastName': 'Mera Agudelo',
    'age': 33
  };

  final address = {
    'ciudad': 'Tulua',
    'pais': 'Colombia'
  };

  print('Person: $person');
  print('Length: ${ person.length }');
  print('Keys: ${ person.keys }'); // retorna las keys del mapa
  print('Values: ${ person.values }'); // retorna los valores del mapa

  person.addAll( address );// Agrega el mapa address a el mapa person
  print('AddAll: $person');

  person.remove('pais'); // recibe el key para eliminar
  print('remove: $person');

  // person.removeWhere((key, value) => (key!='name') ? true : false);
  print('removeWhere: $person');

  person.forEach((key, value) {
    print('key: $key value: $value');
  });

  final newMap = person.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print('persona map: $newMap');
}