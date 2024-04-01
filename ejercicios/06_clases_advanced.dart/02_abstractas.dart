
/**
 * Las clases abstractas solo sirven para dar 
 * su metodos y propiedades a otras clases
 */
abstract class Vehicle {

  bool on = false;

  void turnOn() {
    on = true;
    print('Vehicle engine!');
  }

  void turnOff() {
    on = false;
    print('Vehicle turn Off!');
  }

  bool reviewMotor();

}

class Carro extends Vehicle {

  int kilometer = 0;
  
  @override
  bool reviewMotor() {
    print('Motor Okey!');
    return true;
  }
  
}

void main(List<String> args) {
  final ford = new Carro();

  ford.turnOn();
  ford.turnOff();

  ford.reviewMotor();
}