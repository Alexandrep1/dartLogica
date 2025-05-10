// Itere sobre um map e mostre todas as chaves.

void main(List<String> args) {
  Map<String, int> pessoas = {
    'Janira': 50,
    'Adilson': 54,
    'Eduardo': 28,
    'Gustavo': 25
  };

  for (String pessoa in pessoas.keys){
    print(pessoa);
  };
}