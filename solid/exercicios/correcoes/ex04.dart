abstract class Trabalhador {
  void trabalhar();
}

abstract class Alimentador {
  void comer();
}

class Robo implements Trabalhador {
  @override
  void trabalhar() {
    print("Robô trabalhando");
  }
}

class Humano implements Trabalhador, Alimentador {
  @override
  void trabalhar() => print("Humano trabalhando");

  @override
  void comer() => print("Humano comendo");
}

void main(List<String> args) {
  Humano humano = new Humano();
  Robo robo = new Robo();

  humano.trabalhar();
  humano.comer();

  robo.trabalhar();
}
