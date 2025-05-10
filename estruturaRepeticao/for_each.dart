/**
 * o forEach é usado principalmente para iterar sobre coleções (lista. conjuntos e etc)
 */

/* sintaxe
  colecao.forEach( (item){
    execução -- para cada item será executada a função.
  });
 */

void main(List<String> args) {
  // exemplo 01 - listando frutas de um List;
  // List<String> frutas = [
  //   'Banana',
  //   'Melancia',
  //   'Maça',
  //   'Mirtilo',
  //   'Pocan'
  // ];

  // frutas.forEach((fruta) {
  //   print('Fruta: $fruta');
  // });

  // exemplo 02 - percorrendo números de uma lista;
  // List<int> numeros = [10, 20, 30, 40];

  // numeros.forEach((numero){
  //   print(numero);
  // });

  // numeros.forEach((numero) => print(numero)); // sintaxe encurtada.

  // exemplo 03 - imprimir chaves e valores de um Map;
  Map<String, int> pessoas = {
    'João': 30,
    'Amélia': 34,
    'Cris': 44,
    'Enzo': 16,
    'Valentina': 15 
  };

  pessoas.forEach((nome, idade) {
    if (idade <= 18) {
      print('Nome: $nome | Idade: $idade anos');
    }
  });
}


