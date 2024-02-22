String capitalizar( String texto ) {
  return texto.toUpperCase();
}

Map<String, String> capitalizarMap(Map<String, String> map) {
  // Break the reference
  // map = {...map};

  map['nombre'] = map['nombre']?.toUpperCase() ?? 'No hay nombre';
  return map;

}

void main(List<String> args) {
  
  // pass by value
  String name = 'juan';
  String name2 = capitalizar(name);

  print(name);
  print(name2);

  // pass by reference
  Map<String, String> persona = {
    'nombre': 'Tony Stark',
  };

  Map<String, String> persona2 = capitalizarMap(persona);

  print(persona);
  print(persona2);

}