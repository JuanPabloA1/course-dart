void main(List<String> args) {
  
  int a = 10, b = 20;
  int result = sumar(a, b);
  int result2 = sumarFlecha(a, b);

  List<int> list = [1,2,3,4,5,6,7,8,9,10,11];

  var newList = list.where( (n) {
    return n > 4;
  });

  var newListLambda = list.where( (n) => n > 4);

  print(result);
  print(newList);
  print(newListLambda);
  /**
   * A List is an ordered collection of elements where the same 
   * element may occure several times at different positions.

   * A Set is (usually) an unordered collection of unique elements. 
   * The uniqueness is evaluated by using == and hashCode.
   */
  print(newListLambda.toSet());
  print(newListLambda.toList());
}

int sumar( int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;