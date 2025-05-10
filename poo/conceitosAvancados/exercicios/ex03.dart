/* 
  * Composição:
    - Crie uma classe Computador que contém Processador, Memoria e DiscoRigido. Os componentes devem ser criados dentro do construtor do Computador.
    - Mostre que os componentes não existem mais se o objeto Computador for destruído.
 */

class Computador {
  String processador;
  String memoria;
  String discoRigido;
  Computador(this.processador, this.memoria, this.discoRigido);
}

void main(List<String> args) {
  Computador computador = new Computador("Intel I7", '16GB', '1TB');
  print("""
    * Descrição do Computador:
      - Processador => ${computador.processador}
      - Memória RAM => ${computador.memoria}
      - Disco Rígido => ${computador.discoRigido}
  """);

}
