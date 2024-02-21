main () {

  var a = 10;
  final b = 10;
  // el const es para definir una constante a nivel de compilacion esto significa que cuando comienza 
  // a compilarse es cuando se almacena el valor de esta variable y no podra ser cambiada.
  const c = 10;

  a = 20;

  // The reserved word 'late' it allow assigned 
  // the value in other moment without import it 
  // have final the variable.

  late final double x;
  x = 10;
  print( x );
// when we wanna change the value in a list can use final.
// but when never we gonna change the value of list we will use const.

  // final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  // const personasConst = ['Juan', 'Pedro', 'Fernando'];

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst =  ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Maria');
  personasConst.add('Maria');

  print(personasConst);
}