class Veiculo {
  
  void mover(){
    print("veiculo está se movendo");
  }
}
void main(List<String> args) {
  
  Veiculo ciclano = new Veiculo();
  print(ciclano.mover);
}