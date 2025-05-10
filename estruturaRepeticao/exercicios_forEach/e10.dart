// Transforme uma lista de números entre 0 e 9 retornando as letras correspondentes no alfabeto de A a J

void main(List<String> args) {
  List<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<String> letras = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  numeros.forEach((numero){
    print('Número: $numero = ${letras[numero]}');
  });
}