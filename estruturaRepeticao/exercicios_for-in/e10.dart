// Percorra um map e mostre chaves e valores na tela.

void main(List<String> args) {
    Map<String, int> pessoas = {
    'Janira': 50,
    'Adilson': 54,
    'Eduardo': 28,
    'Gustavo': 25
  };

  for (var pessoa in pessoas.keys){
    print('$pessoa: ${pessoas[pessoa]}');
  };
  
}