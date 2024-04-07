void main(List<String> args) {
  
  String name = 'Juan';
  String lastName = 'Mera';

  String fullName = '$name' ' ' '$lastName';

  print('String: $fullName');

  print('Length: ${ fullName.length }');
  print('Contains F: ${ fullName.contains('F', 0) }');
  print('EndsWith a: ${ fullName.endsWith('a')}');

  print('PadLeft: ${ fullName.padLeft(20,'...') }');
  print('PadLeft: ${ fullName.padRight(20,'...') }');

  print('Operador []: ${ fullName[0] }');
  print('Operador *: ${ fullName * 3 }');
  print('Operador []: ${ '*' * 10 }');

  print('ReplaceAll: ${ fullName.replaceAll(new RegExp(r'a'), 'e') }');
  print('SubString: ${ fullName.substring(1, 4) }');
  print('IndexOf: ${ fullName.indexOf('J') }');
  print('IndexOf: ${ fullName.indexOf('u') }');
  print('IndexOf: ${ fullName.indexOf('a') }');
  print('IndexOf: ${ fullName.indexOf('n') }');

  print('Split: ${ fullName.split(' ')}');
  print('Split: -----${ fullName.split(' ')[1]}----');
  print('Ejercicio: ${ fullName[8].toUpperCase() }');
}