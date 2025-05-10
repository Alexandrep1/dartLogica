// Crie um programa que multiplica cada número em um list por 2 e exiba os resultados.

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> novaLista = [];

  numeros.forEach((numero){
    novaLista.add(numero*2);
  });

  print(novaLista);

}