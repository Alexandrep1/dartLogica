// Exiba todos os elementos de uma lista com seus índices correspondentes.

void main(List<String> args) {
  List<String> nomes = [
    'Janira',
    'Adilson',
    'Eduardo',
    'Gustavo'
  ];

  int i = 0;
  nomes.forEach((nome){
    print('Elemento: $nome | Index: $i');
    i++;
  });

  // correção:
  nomes.asMap().forEach((indice, nome){
    print('Indice: $indice | Elemento: $nome');
  });

  print(nomes.asMap());

  // exemplo com indexOf();
  nomes.forEach((nome){
    print('Index: ${nomes.indexOf(nome)} | Elemento: $nome');
  });
}