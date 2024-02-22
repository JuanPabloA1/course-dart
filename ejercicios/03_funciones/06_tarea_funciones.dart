/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

String printUserOne( String message) {
  stdout.writeln('$message');
  return stdin.readLineSync() ?? '';
}

Map<String, dynamic> savedUser( String name, String age, String country) {
  Map<String, dynamic> user = {
    'nombre': name,
    'edad': age,
    'pais': country
  };



  return user;
}

Map<String, dynamic> deductions(Map<String, dynamic> user, double salary, double netSalary, double deductions) {
  user['salary']     = salary;
  user['deductions'] = deductions;
  user['netSalary'] = netSalary;

  return user;
}

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  stdout.writeln('=========== Usuario 1 =============');

  String age = printUserOne('How old are you?');
  String name = printUserOne('What is your name?');
  String country = printUserOne('What country Do you born?');

  Map<String, dynamic> user = savedUser(name, age, country);

  print('First user without deductions');
  print(user);

  double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  print(deductions(user, salario, salarioNeto, deducciones));

  // Persona 2
  stdout.writeln('=========== Usuario 2 =============');

  String edad = printUserOne('How old are you?');
  String nombre = printUserOne('What is your name?');
  String pais = printUserOne('What country Do you born?');

  final Map<String, dynamic> usuario2 = savedUser(nombre, edad, pais);

  print('Second user without deductions');
  print(usuario2);

  double salario2     = 1800;
  double deducciones2 = salario2 * 0.15;
  double salarioNeto2 = salario2 - deducciones2;

  stdout.writeln(deductions(usuario2, salario2, salarioNeto2, deducciones2));

}

