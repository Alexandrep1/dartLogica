// 4. Receba uma nota (A, B, C, etc.) e mostre a descrição de desempenho correspondente.
import 'dart:io';

void main(List<String> args) {
  stdout.write('Informe sua nota: ');
  double nota = double.parse(stdin.readLineSync()!);

  if (nota < 0 || nota > 10) {
    print('Informe uma nota entre 0 e 10');
  } else if (nota >= 0 && nota <=5) {
    print('Seu desempenho foi RUIM');
  } else if (nota > 5 && nota < 7) {
    print('Seu desempenho foi REGULAR');
  } else if (nota >= 7 && nota < 8) {
    print('Seu desempenho foi MEDIANO');
  } else if (nota >= 8 && nota < 9) {
    print('Seu desempenho foi BOM');
  } else {
    print('Seu desempenho foi EXCELENTE');
  }

}