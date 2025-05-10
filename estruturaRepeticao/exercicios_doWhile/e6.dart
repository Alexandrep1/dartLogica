// solicite numeros positivos ao usuario e calcule a média dos numeros digitados até que um numero negativo seja digitado.
import 'dart:io';

void main(List<String> args) {
  print('Informe quantos valores desejar, e descubra a média. Para obter a média informe um valor negativo');
  int i = 0;
  int soma = 0;
  int numero;

  do {
    stdout.write('Digite o ${i + 1}º valor: ');
    numero = int.parse(stdin.readLineSync()!);
    if (numero < 0) {
      break;
    }
    soma += numero;
    i++;
  } while (numero >= 0);

  double media = soma / i;
  print('A média dos valores informados é: $media');
}