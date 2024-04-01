


import 'clases/mi_servicio.dart';

void main(List<String> args) {

  final spotifyService = new MiServicio();
  spotifyService.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v3';

  /**
   * Cuando aplicamos un patron singleton lo que hacemos en este caso es
   * por medio de las 2 variables spotifyService, spotifyService2, cuando creamos 
   * estas variables asi tengamos una nueva instancia de estas estas ocuparan el mismo espacio
   * en memoria y cuando verificamos al imprimir las variables las dos me apuntan al ultimo lugar
   * que se modifico en la url
   */
  print( spotifyService == spotifyService2);

  print(spotifyService.url);
  print(spotifyService2.url);

}