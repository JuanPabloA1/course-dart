import 'dart:io';

void main() {
  // Asi se hace en sistemas windows
  File file = new File(Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt');

  // Asi se hace en sistemas  OSX y Linux
  // File file = new File(Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');
  
  // Future<String> f = file.readAsString();
  String f = file.readAsStringSync();

  // f.then(print);
  print(f);

  print('Fin del main');
}