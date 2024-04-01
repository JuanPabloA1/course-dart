
class Vehicle {

  bool on = false;

  void turnOn() {
    on = true;
    print('Vehicle engine!');
  }

  void turnOff() {
    on = false;
    print('Vehicle turn Off!');
  }

}

class Carro extends Vehicle {

  int kilometer = 0;

}

void main(List<String> args) {
  
  final ford = new Carro();

  ford.turnOn();
  ford.turnOff();
  ford.turnOff();
  ford.turnOff();

}