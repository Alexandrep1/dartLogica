// Use foreach para transformar um list de strings em letras maiúsculas.

void main(List<String> args) {
  List<String> nomes = [
    'Janira',
    'Adilson',
    'Eduardo',
    'Gustavo'
  ];

  List<String> nomeUpper = [];

  nomes.forEach((nome){
    nomeUpper.add(nome.toUpperCase());
  });

  print(nomeUpper);

}