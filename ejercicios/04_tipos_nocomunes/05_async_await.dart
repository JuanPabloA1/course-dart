import 'dart:io';

void main() async {
  String path = Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt';
  
  String text = await leerArchivo(path);
  print(text);
  print('Fin del main');
}

Future<String> leerArchivo(String path) async {
  File file = new File( path );

  return file.readAsString();
}