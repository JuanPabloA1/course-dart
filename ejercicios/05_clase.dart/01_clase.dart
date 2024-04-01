

import 'clases/persona.dart';

main() {
  
  final persona = new Persona(33, name: 'Juan Pablo');
  final persona2 = new Persona.persona30('Maria');

  persona..name = 'Juan Pablo'
          ..edad = 23;
          // ..bio = 'Salio de la vajina de la mama';
  
  // persona.bio = 'Cambie el valor!';
  
  print(persona2);
}

