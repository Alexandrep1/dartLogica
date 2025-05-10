// Imprima a tabuada do 5 (5 x 1 até 5 x 10).
void main(List<String> args) {

  for (int i = 1; i <= 10; i++) {
    print('5 * $i = ${5*i}'); // interpolação com expressão utilizando ${expressao};
  }
  
}