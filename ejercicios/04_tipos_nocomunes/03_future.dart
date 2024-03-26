main() {

  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues!');
  });

  // timeout.then((text) => print(text));
  timeout.then( print );

  print("Fin del main");
}