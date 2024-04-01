
class Location {

  final double latitud;
  final double lng;

  const Location( this.latitud, this.lng );

}

void main(List<String> args) {
  
  final sanFrancisco = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

  print( sanFrancisco == sanFrancisco2); // False
  print( sanFrancisco2 == sanFrancisco3); // False

  const sanFrancisco4 = const Location( 18.2323, 39.9000);
  const sanFrancisco5 = const Location( 18.2323, 39.9001);
  const sanFrancisco6 = const Location( 18.2323, 39.9001);

  print('\n');
  print(sanFrancisco4 == sanFrancisco5);// False
  print(sanFrancisco5 == sanFrancisco6);// True

  // En este ejemplo cuando comparamos sanFrancisco4 == sanFrancisco5 nos da falso porque
  // Sus valores en memoria son diferentes. En cambio en el caso de sanFrancisco5 == sanFrancisco6
  // No da verdadero ya que sus valores en memoria son los mismos por lo tanto al compararlos estos
  // Seran verdaderos porque estaran en el mismo lugar en memoria.

}