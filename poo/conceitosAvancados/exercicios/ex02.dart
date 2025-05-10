/* 
  * Agregação:
    - Crie uma classe Time e outra Jogador. Um time possui jogadores, mas um jogador pode existir sem estar em um time.
    - Adicione jogadores ao time e mostre que o jogador existe fora do time.
 */

class Time {
  String nome;
  List<Jogador> jogadores = [];
  Time(this.nome);
  
  void adicionarJogador(jogador) {
    jogadores.add(jogador);
  }

  void exibirJogadores() {
    for(var i in jogadores) {
      print(i);
    }
  }
}

class Jogador {
  String nome;
  Jogador(this.nome);
}

void main(List<String> args) {
  Map<String, Jogador > jogadores = {
    'j1' : new Jogador("Gustavo"),
    'j2' : new Jogador("Alexandre"),
    'j3' : new Jogador("Juan")
  };

  print("Jogadores sem time:");
  for(var i in jogadores.values) {
    print(i.nome);
  }



  Time curintia = new Time("Curintia");
  curintia.adicionarJogador(jogadores['j1']);
  curintia.exibirJogadores();
  
}