
class Rectangle {

  int? base;
  int? high;
  int? area;
  String? type; // cuadrado base = altura, rectangulo base != altura

  // Los factory jamas van a poder crear instancias de su clase
  // Tienen que regresar ya sea una nueva instancia o una generada de la misma clase
  factory Rectangle( int base, int high ) {

    if ( base == high ) {
      return Rectangle.cuadrado(base);
    } else {
      return Rectangle.rectangulo(base, high);
    }
  }

  Rectangle.cuadrado( int base ) {
    this.base = base;
    this.high = base;
    this.area = base * base;
    this.type = 'Cuadrado';
  }

  Rectangle.rectangulo( int base, int high ) {
    this.base = base;
    this.high = high;
    this.area = base * high;
    this.type = 'Rectangulo';
  }

  @override
  String toString() {
    return { 'base': base, 'high': high, 'area': area, 'type': type }.toString();
  }

}

void main(List<String> args) {
  
  final figure = new Rectangle(10, 10);

  print(figure);
}