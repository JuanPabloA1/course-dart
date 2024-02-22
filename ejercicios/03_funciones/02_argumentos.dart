// Asi se pueden poner argumentos opcionales con los corchetes.
void saludar ( String mensaje, [ String nombre = '<insertar nombre>', int edad = 20 ] ) {
  print( '$mensaje $nombre - $edad' );
}

void toGreet(
  String mensaje, 
  { required String nombre, int veces = 10 }
) {
  // funtion body
  print('to Greet: $mensaje $nombre - $veces');
}

void main(List<String> args) {

  saludar('Hello', 'Juan', 23);
  toGreet('Saludar', nombre: 'Juan', veces: 10);
}