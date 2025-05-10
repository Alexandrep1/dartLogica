// Itere sobre um list de strings e exiba as strings em letras maiúsculas.

void main(List<String> args) {
  List<String> pessoas = ['janira', 'adilson', 'eduardo', 'gustavo'];

  for (String pessoa in pessoas){
    print(pessoa.toUpperCase());
  }
}