class Carro {
  // propriedades:
  String? modelo;
  int? ano;
  bool ligado = false;

  // métodos:
  String apresentar() {
    return 'Carro: $modelo | Ano: $ano';
  }

  void ligar() {
    ligado = true;
    print('O $modelo está sendo ligado');
  }

  void desligar() {
    ligado = false;
    print('O $modelo foi desligado');
  }

  void dirigir() {
    if (ligado) {
      print('Dirigindo $modelo');
    } else {
      print('Para dirigir, ligue o carro!');
    }
  }
}
