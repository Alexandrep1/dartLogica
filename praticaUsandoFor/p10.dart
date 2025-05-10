// Verifique se um determinado número existe em uma lista, usando um while.

void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int valor = 11;
  bool valorLista = false;
  int i = 0;

  while(i < numeros.length) {
    if (numeros[i] == valor) {
      print('O número $valor está no index $i da lista');
      valorLista = true;
    } 
    i++;
  }

  if (valorLista != true) {
    print('O número $valor não consta na lista');
  }

}