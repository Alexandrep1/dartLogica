class Computador {
  String processador;
  String memoria;
  String discoRigido;

  Computador(this.processador, this.memoria, this.discoRigido);

  @override
  String toString() {
    return '''
  Computador---
  Processador: $processador
  Memória: $memoria
  Disco Rígido: $discoRigido
  ''';
  }
}

void main() {
  Computador? pc = Computador("i5 10400f", "hyperX 3200mhz", "ssd 500gb");
  print(pc);
}
