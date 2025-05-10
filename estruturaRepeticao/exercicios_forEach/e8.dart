// Itere sobre uma lista de objetos e exiba uma propriedade específica de cada objeto.

void main(List<String> args) {
  Map<String, int> pessoas = {
    'Janira': 50,
    'Adilson': 54,
    'Eduardo': 28,
    'Gustavo': 25
  };

  pessoas.forEach((nome, idade){
    print('Nome: $nome | Idade: $idade');
  });
}