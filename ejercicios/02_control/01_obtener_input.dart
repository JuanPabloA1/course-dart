import 'dart:io';

main () {
  stdout.write('Hellouw World');
  stdout.write('Hellouw World \n');

  // Imprimir en terminal o cmd
  stdout.writeln('What is your name?');

  // Leer informacion
  String? name = stdin.readLineSync();

  stdout.writeln('Tu nombre es: $name');
}