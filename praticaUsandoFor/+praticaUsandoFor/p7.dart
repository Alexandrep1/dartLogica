// Use um do while para percorrer uma lista de 5 nomes e exibi-los no terminal.

void main(List<String> args) {
  List<String> nomes = ['Janira', 'Adilson', 'Eduardo', 'Gustavo'];
  int i = 0;

  do {
    print(nomes[i]);
    i++;
  } while (i < nomes.length);
}