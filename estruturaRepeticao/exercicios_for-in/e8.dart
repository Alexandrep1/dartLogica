// Valide se uma lista contém algum elemento específico.

void main(List<String> args) {
  List<String> pessoas = ['janira', 'adilson', 'eduardo', 'gustavo'];
  String nomeProcura = 'Gustavo';
  bool contido = false;

  for (String pessoa in pessoas){
    if (pessoa.toLowerCase() == nomeProcura.toLowerCase()){
      print('O nome em questão se encontra na lista');
      contido = true;
    }
  };

  if (contido != true){
    print('O nome em questão não está na lista');
  }

}