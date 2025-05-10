// Use foreach para contar quantas palavras de um list têm mais de 5 letras.

void main(List<String> args) {
  List<String> nomes = [
    'José',
    'João',
    'Rodrigo',
    'Amanda',
    'Tiago'
  ];
  int nomesGrandes = 0;

  nomes.forEach((nome){
    if (nome.length > 5) {
      print(nome);
      nomesGrandes++;
    }
  });

  print('Na lista possuem $nomesGrandes nomes com mais de 5 letras');

}