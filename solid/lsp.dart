/* 
  LSP -> LISKOV SUBSTITUTION PRINCIPLE
 */

/* 
  Violando o princípio LSP:
  - Um pinguim não deve ser forçado a voar, isso quebra o princípio
 */
class Ave {
  void voar() {
    print("Ave Voando!");
  }
}

class Pinguim extends Ave {
  void voar() {
    throw Exception("Pinguins não voam");
  }
}

/* 
  Solução respeitando o princípio LSP:
 */
class Avee {
  void andar() {
    print("Ave Andando!");
  }
}

abstract class AveQueVoa extends Avee {
  void voar(); // método abstrato;
}

class Andorinha extends AveQueVoa{
  @override
  void voar() {
    print("Andorinha Voando!");
  }
}

class Pinguiim extends Avee {
  // Pinguim não voa, portanto não implementa o método voar();

  @override
  void andar() {
    print("Pinguim andando!");
  }
}

void main(List<String> args) {
  Andorinha andorinha = Andorinha();
  andorinha.voar();
  andorinha.andar();

  Pinguiim pinguim = Pinguiim();
  pinguim.andar();
  
}