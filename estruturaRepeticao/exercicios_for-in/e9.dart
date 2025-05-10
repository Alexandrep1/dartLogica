// Inverta os valores de um list em um novo list (usando for-in).

void main(List<String> args) {
  List<String> pessoas = ['janira', 'adilson', 'eduardo', 'gustavo'];
  List<String> pessoasInvertido = [];

  for (String pessoa in pessoas){
    pessoasInvertido.insert(0, pessoa);
  }

  print(pessoasInvertido);

}