class Jogador {
  String nome;
  Jogador(this.nome);

  void apresentar() => print("  - $nome");
}

class Time {
  String nome;
  List<Jogador> jogadores = [];
  Time(this.nome);

  void adicionarJogador(Jogador jogador) => jogadores.add(jogador);

  void listarJogadores() {
    print("* Jogadores do Time: $nome");
    for(var i in jogadores) {
      print(" - ${i.nome}");
    }
  }
}

void main(List<String> args) {
  Jogador j1 = new Jogador("Cristiano");
  Jogador j2 = new Jogador("Ronaldinho");
  Jogador j3 = new Jogador("Cafu");

  Time time = new Time("Flamengo");
  time.adicionarJogador(j1);
  time.adicionarJogador(j2);

  time.listarJogadores();

  print("\n* Jogadores sem time:");
  j3.apresentar();

}