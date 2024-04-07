
class Persona {

  String name;
  int age;

  Persona( this.name,this.age );

  void printName() => print('Name: $name, Age: $age');
}

class Client extends Persona {
  String? address;
  List orders = [];

  // De esta forma se hacen los super para los constructores que heredan
  Client(int currentAge, String currentName): 
    super(currentName, currentAge);

  // Se usa solo para indicar que el metodo 
  // ha sido sobre escrito de la clase padre
  @override
  void printName() {
    super.printName();
    print('Client: $name ($age)');
  }
}

void main(List<String> args) {
  final p = new Client(23, 'Juan');
  p.printName();
  
}