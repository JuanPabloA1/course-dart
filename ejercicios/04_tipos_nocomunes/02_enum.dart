main() {

  Audio volume = Audio.alto;

  switch( volume ) {

    case Audio.bajo : print('Volumen bajo'); break;
    case Audio.medio : print('Volumen medio'); break;
    case Audio.alto : print('Volumen alto'); break;
    
  }

}

enum Audio {
  bajo,
  medio,
  alto
}