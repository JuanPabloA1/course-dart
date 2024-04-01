/**
 * Los mixins no pueden ser instaciados esa es la primera diferencia
 * a primera vista parece una clase abstracta, pero los mixins no pueden 
 * tener constructores a diferencia de estas.
 * 
 * Estos estan hechos para heredar o tranferir sus metodos y propiedades 
 * a otras clases 
 */
mixin Logger {

  void printText( String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

mixin Logger2 {

  void printText2( String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

abstract class Astro with Logger, Logger2 {

  String? name;

  Astro() {
    printText('-- Init del Astro --');
  }

  void itExist() {
    print('-- Soy un ser celestial y existo');
  }
}

// Tener en cuenta que si queremos implementar los mixins y estamos extendiendo 
// debemos de poner primero el extends y luego el with, ya que este es el orden
class Asteroide extends Astro with Logger, Logger2 {

  String? name;

  Asteroide (this.name) {
    printText('I am $name');
    printText2('I am $name');
  }
}

void main(List<String> args) {
  final ceres = new Asteroide('Ceres');
  print(ceres);
}