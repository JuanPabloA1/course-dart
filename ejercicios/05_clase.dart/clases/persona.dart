
class Persona {
  // Campos o propiedades
  String? name; // Asi se puede indicar que la variable puede tener valor nullo
  int? edad;
  String _bio = 'Hola, soy una propiedad privada';

  // Get y Sets
  String? get info => _bio.toUpperCase();

  set bio(String text) => _bio = text;

  // Constructores
  // Persona( int edad, String name ) {
  //   // print('Constructor');
  //   // _bio = 'Hola desde el constructor';
  //   this.name = name;
  //   this.edad = edad;
  // }
  Persona(this.edad, {this.name}); // Con las llaves indico de que puede ser opcional

  Persona.persona30( this.name ) {
    this.edad = 30;
  }

  // Metodos
  @override
  String toString() => '$name $edad $_bio';
}