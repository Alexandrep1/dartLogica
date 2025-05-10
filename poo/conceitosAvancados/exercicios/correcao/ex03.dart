class Processador{
  Processador(){
    print("Processador criado");
  }

  void desligar() => print("desligando processador");
}

class Memoria{
  Memoria(){
    print("memoria criada");
  }

  void desligar() => print("Memoria desligada");
}

class Disco{
  Disco(){
    print("Disco criado");
  }

  void desligando() => print("disco desligado");
}

class Computador{
   late Processador processador;
   late Memoria memoria;
   late Disco disco;

  Computador(){
    print("computador criado");
    processador = Processador();
    memoria = Memoria();
    disco = Disco();
  }

  void desligar(){
    print("Desligando pc");
    processador.desligar();
    memoria.desligar();
    disco.desligando();
    print("pc desligado");
  }
}

void main(List<String> args) {
  Computador pc = Computador();
  pc.desligar();

  //destruindo o pc
  print("pc está desligado");
}