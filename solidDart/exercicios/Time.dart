class Time {

String jogadores;

Time(this.jogadores);

List<Time> jogadoresNoTime = [];

void mostrandoJogadores(Time jogadores){
  jogadoresNoTime.add(jogadores);
}

void listandoJogadores(){
  print("listando jogadores");
   for(var jogador in jogadoresNoTime){
  print("Jogador ${jogador.jogadores}, ${jogador.jogadores}");
  }
 }
}
void main(List<String> args) {
  
Time jogador1 = Time("alexandre");
Time jogador2 = Time("alexandre 2");


jogador1.mostrandoJogadores(jogador1);
jogador2.mostrandoJogadores(jogador2);


}

