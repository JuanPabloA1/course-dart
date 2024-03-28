void main() { 
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) { 
      throw 'Auxilio!, Esto exploto';
    }
      return 'Retorno del futuro';
    
  });

  // timeout.then((text) => print(text));
  timeout.then( print )
    .catchError( (error) => print(error));

  print("Fin del main");
}