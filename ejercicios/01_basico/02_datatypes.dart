main() {
  // Numbers
  var a = 10;
  int b = 10;
  double c = 10.0;

  // Nullsafety it doesn't permit the null variables.
  // int c;

  // When I don't know the value of my variable can do this.
  int? d;

  int _a = 30;
  double $b = 40;


  print(a);
  print(b);
  print(c);
  print(d);
  print(_a);
  print($b);

  // String
  
  String nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "0'Connor";
  String lastName = 'Stark';

  String nombreCompleto = '$nombre $lastName';

  String multilinea = '''
  Hola Mundo
  How are you?
  $nombreCompleto
  O'Connor
  ''';

  print(nombre2);
  print(nombre3);
  print(multilinea);

  // Booleans
  bool isActive = true;
  bool isNotActive = !isActive;

  print( isActive );
  print( isNotActive );

  // Lists
  var data = ['Lex', 'Red Skull', 'Doom', 1, true, 2.3];
  List<String> villans = ['Lex', 'Red Skull', 'Doom'];

  // villans[0] = 'Superman';
  villans.add('Duende Verde');
  villans.add('Duende Verde');
  villans.add('Duende Verde');

  print( villans );
  print(data);

  var villanSet = villans.toSet();
  print(villanSet.toList());

  // Sets
  // It doesn't permit elements repeat
  Set<String> villans2 = { 'Lex', 'Red Skull', 'Doom' };

  villans2.add('Duende Verde');

  print(villans2);

  // Maps
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
  };

  print( ironman['nombre'] );
  print( ironman['poder'] );
  print( ironman['nivel'] );
  print( ironman );

  Map<String, dynamic> captain = new Map();

  captain.addAll({ 
    'name': 'Steve',
    'poder': 'Soportar droga sin morir',
    'nivel': 5000
   });

   print(captain);

}