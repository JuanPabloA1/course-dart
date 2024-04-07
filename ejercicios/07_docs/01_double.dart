void main(List<String> args) {
  
  double n = -3.1416;
  double f = double.infinity;

  print('Firma: $n');
  print('Firma: ${ n.toString() }');
  print('Firma: ${ n.sign } :: $n');

  print('isFinite: ${ n.isFinite } :: $n');
  print('isFinite: ${ f.isFinite } :: $n');

  print('abs: ${ n.abs() } :: $n');
  print('ceil: ${ n.ceil() } :: $n');
  print('ceilToDouble: ${ n.ceilToDouble() } :: $n');
  print('round: ${ n.round() } :: $n');
  print('roundToDouble: ${ n.roundToDouble() } :: $n');
  print('clamp: ${ n.clamp(1, 3) } :: $n');
}