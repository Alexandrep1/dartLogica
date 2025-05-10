// ignore_for_file: unused_local_variable
void main(){
  /**
   * Operadores aritméticos são aqueles usados para realizar operações matemáticas
   * ADIÇÃO +
   * SUBTRAÇÃO -
   * DIVISÃO /
   * MULTIPLICAÇÃO *
   * MÓDULO %
   */
  int v1 = 5;
  int v2 = 2;
  print(v1 + v2); //adição
  print(v2 - v1); //subtração
  print(v2 / v1); //divisão
  print(v2 ~/ v1); //divisão de inteiros
  print(v1 * v2); //multiplicação
  print(v1 % v2); //módulo (resto da divisão)

  //fazendo operação e atribuindo valor
  int total = 0;
  double total2 = 0;
  total = v1 + v2;

  //operação com atribuição 
  total += v1; //adição com atribuição
  total -= v1; //subtração com atribuição
  total2 /= v1; //divisão com atribuição
  total ~/= v1; //divisão de inteiro com atribuição
  total *= v1; //multiplicação com atribuição
  total %= v1; //módulo com atribuição

  //operador de incremento
  v1 = 1;
  print(v1);
  v1++;
  print(v1);
  ++v1;
  print(v1);

  //operador de decremento
  v1 = 1;
  print(v1);
  v1--;
  print(v1);
  --v1;
  print(v1);
}

