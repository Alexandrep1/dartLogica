// Imprima o índice e o valor de cada elemento em um list.

void main(List<String> args) {
  List<String> pessoas = ['janira', 'adilson', 'eduardo', 'gustavo'];

  for (String pessoa in pessoas){
    print('Indice: ${pessoas.indexOf(pessoa)} | Valor: $pessoa');
  }
}