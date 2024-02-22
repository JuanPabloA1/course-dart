import 'dart:math';

void main(List<String> args) {

  int rnd = Random().nextInt(7);

  switch (rnd) {

    case 0:
      print('Monday');
    break;

    case 1:
      print('Tuesday');
    break;

    case 2:
      print('Wednesday');
    break;

    case 3:
      print('Thursday');
    break;

    case 4: 
      print('Friday');
    break;

    case 5:
      print('Saturday');
    break;

    case 6:
      print('Sunday');
    break;

    default: 
      print(" it's doesn't a day of the week. ");
  }

  print(rnd);

}