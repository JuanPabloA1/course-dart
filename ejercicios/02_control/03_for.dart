import 'dart:io';

main() {

  stdout.writeln('Ingrese el numero -> ');
  int number = int.parse(stdin.readLineSync()!);

  for (int i=1; i<=10; i++) {
    print('${number} * ${i} = ${number * i}');
  }

}