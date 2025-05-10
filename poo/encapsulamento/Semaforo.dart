class Semaforo {
  String _corAtual = "🔴";

  void mudarCor() {
    if (_corAtual == "🔴") {
      _corAtual = "🟢";
    } else if (_corAtual == "🟢") {
      _corAtual = "🟡";
    } else {
      _corAtual = "🔴";
    }
  }

  void mostrarStatus() {
    print("Cor atual: $_corAtual");
  }
}
