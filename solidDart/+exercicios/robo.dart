abstract class Trabalhador {
  void trabalhar ();
}

abstract class Alimentador {
  void comer();
}

class Humano implements Trabalhador, Alimentador {

  @override
  void trabalhar() => print("humano trabalhando");

  @override
  void comer() => print("comendo");
  
}

class Robo implements Trabalhador {

  @override
  void trabalhar(){
    print("robo trabalhando");
  }
}