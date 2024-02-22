void main(List<String> args) {

  /**
   * El labelfor nos permite ponerle sobre nombre a nuestros ciclos
   * esto nos permite por medio del break o el continue romper o continuar la secuencia
   * con nombre propio.
   */
  
  outerLoop:
  for (int i=0; i<5; i++) {
    print('Valor de i: $i');
    
    // ignore: unused_label
    innerLoop:
    for (int j=0; j<5; j++) {
      print('Valor de j: $j');
      
      if ( j == 1) {
        break outerLoop;
      }
    }
  }
}