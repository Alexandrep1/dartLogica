/**
 * while é uma estrutura de repetição usada quando não sabemos a quantidade de iterações que serão realizadas.
 * é amplamente utilizado com maps, e lists.
 * 
 * sintaxe:
 *  while(condicao) {
 *    //bloco de execução;
 *  }
 */


void main(List<String> args) {
// exemplo 01 - iterando números entre 1 e 10;
/*   int contagem = 1;
  while (contagem <= 10) {
    print('contagem $contagem');
    contagem++;
  } */

// exemplo 02 - exibir numeros pares entre 0 e 20;
/*   int i = 0;
  while (i <= 20) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  } */
  
// exemplo 03 - iterando sobra um List;
/*   List<String> nomes = ['José', 'Maria', 'João', 'Pedro'];

  int i = 0;
  while (i < nomes.length) {
    print(nomes[i]); //mostrar o nome baseado na posição que o i estiver nomes[0] = José;
    i++;
  } */

// exemplo 04 - iterando sobre Map e convertendo dados para list para exibir;
  Map<String, int> estoque = {
    'Banana': 10,
    'Melância': 50,
    'Mamão': 14 
  };

  var keys = estoque.keys.toList();
  int i = 0;

  while(i < keys.length) {
    String fruta = keys[i];
    print('Fruta: $fruta | Estoque: ${estoque[fruta]} unidades.');
    i++;
  }

}