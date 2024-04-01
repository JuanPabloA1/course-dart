
/**
 * La idea de las propiedades estaticas es que estas solo sean de lectura
 */

class Tools {
  /* 
    Al ser un metodo estatico puedo accederlo de la manera 
    Tools.listado.add('Tenazas') Tools.listado.forEach(print);

    Pero si hacemos algo como t. y le damos Ctrl + Espacio
    no aparera ninguna propiedad, ya que las propiedades estaticas
    forman parte de la clase como tal y no de las instacias 

    con la propiedad const despues de static nos permite hacer de que 
    la variable listado sea de solo lectura.
  */
  static const List<String> listado = ['Hammer', 'ScrewDriver', 'England Key'];
  /**
   * En este ejemplo no nos sirve que final para aplicarle a la variable para que sea 
   * de solo lectura, esto solo nos funciona con propiedades primitivas, algo asi como
   * int, double, bool, String, etc. 
   */
  // static final List<String> listado = ['Hammer', 'ScrewDriver', 'England Key'];

  static void printList() => listado.forEach(print);
}


void main(List<String> args) {
  
  // final t = new Tools();

  // t.listado.forEach(print);

  /**
   * Cuando hago Tools.listado.add('Tenazas'); logro modificar el listado inicial
   * Aqui hay que tener mucho cuidado, ya que, esto se comporta como una unica instancia.
   * Por ejemplo, si desde otro archivo intentamos acceder a la misma clase y esa misma clase
   * ya paso por este listado Tools.listado.add('Tenazas'); ese nuevo elemento tambien lo
   * tendriamos ahi
   */
  Tools.listado.add('Tenazas');
  Tools.listado.forEach(print);

  Tools.printList();
}