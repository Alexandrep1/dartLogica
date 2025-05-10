// Somar apenas os números pares de 1 a 50 
void main(List<String> args) {
  int i = 2;
  int soma = 0;

  while (i < 51) {
    soma += i;
    print(soma);
    i += 2;
  }
}