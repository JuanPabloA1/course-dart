import 'dart:io';

main() {

  stdout.writeln('How old are you?');
  int edad = int.parse(stdin.readLineSync()!);

  stdout.writeln( edad );

  stdout.writeln(18 <= 20);
  if ( edad >= 18 && edad <= 20) {
    stdout.writeln('Eres mayor de edad!');
  } else if (edad >= 21) {
    stdout.writeln('Eres ciudadano');
  } else if ( edad < 18) {
    stdout.writeln('Eres menor de edad');
  }


}