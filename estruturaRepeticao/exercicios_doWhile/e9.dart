// liste numeros pares de 1 a 100 e mostre a soma total
void main(List<String> args) {
  int pares = 2;
  int soma = 0;

  do {
    print(pares);
    soma += pares;
    pares += 2;
  } while (pares < 101);

  print('A soma total é: $soma');
  
}