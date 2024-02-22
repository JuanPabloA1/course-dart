void main(List<String> args) {
  
  String message = saludar();

  print(message);
  print(greeting());
  greetingWithVoid();
  print(funtionReturntoNumber());

}

String saludar() {
  return 'Hello There!';
}

greeting() {
  return 'Hellouw since greeting';
}

void greetingWithVoid() {
  print('Hello since greetingWithVoid');
}

int funtionReturntoNumber() {
  return 100;
}