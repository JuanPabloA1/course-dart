import 'dart:async';

void main() {

  final stream = StreamController<String>.broadcast();

  stream.stream.listen(
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Mision completa!'),
    cancelOnError: false
  );

  stream.stream.listen(
    (data) => print('Stream 2 Despegando! $data'),
    onError: (err) => print('Stream 2  Error! $err'),
    onDone: () => print('Stream 2 Mision completa!'),
    cancelOnError: false
  );

  stream.sink.add('Apollo 11');
  stream.sink.add('Apollo 12');
  stream.sink.add('Apollo 13');
  stream.sink.addError('Houston tenemos un problema'); // asi se recibe un error
  stream.sink.add('Apollo 14');
  stream.sink.add('Apolo 15');

  stream.sink.close(); // al cerrar el evento no me permitira agregar mas datos a este.


  print('fin del main');

}