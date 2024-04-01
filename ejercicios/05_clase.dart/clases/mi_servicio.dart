

class MiServicio {

  /**
   * Este es el corazon del patron singleton 
   */
  static final MiServicio _singleton = new MiServicio._internal();

  factory MiServicio() {
    return _singleton;
  }

  MiServicio._internal();

  String url = 'https://abc';
  String key = 'abc123';


}