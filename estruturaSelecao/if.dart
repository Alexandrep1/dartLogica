/**
 * uma estrutura de seleção 'if' é utilizada para executar blocos de código de acordo com uma condição
 */

void main(List<String> args) {
  
  //exemplo simples até demais 😁
  if (true){
    //executa esse bloco caso a condição for verdadeira
  }

  //exemplo com if e else
  int idade = 17;
  if (idade < 18){
    print('Menor de idade');
  } else {
    print('Uhull, já pode beber cerveja');
  }

  //exemplo com else if
  int nota = 6;

  if (nota >= 9){
    print('Excelente');
  } else if (nota >= 7){
    print('Muito Bom');
  } else {
    print('Regular');
  }

  //if ternário (com apenas uma linha)
  String status = idade >= 18 ? 'Maior': "Menor";
  print(status);

  //operador de coalescência nula - usado para verificar se um valor é nulo e fornecer um padrão
  String? nome;
  print(nome?? 'valor padrão'); /* se existir algum valor na variavel nome este será impresso
                                se não será impresso 'valor padrão' */

  //
  int dia = 8; //0 para domingo e 6 para sabado
  if (dia == 1){
    print('Segundou');
  } else if (dia == 2 || dia == 3 || dia == 4){
    print('Bora trabalhar que vc não é rico');
  } else if (dia == 5){
    print('Sextou');
  } else if (dia == 6 || dia == 0){
    print('Fim de semana');
  } else {
    print('Este número não representa nenhum dia da semana');
  }

}
