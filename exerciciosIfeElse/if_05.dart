// 5 Escreva um programa que leia dois números e verifique qual é o maior.

import 'dart:io';

void main(List<String> args) {
    stdout.write('Favor informar um valor númerico para N1: ');
    double valor_01 = double.parse(stdin.readLineSync()!);

    stdout.write('Favor informar um valor númerico para N2: ');
    double valor_02 = double.parse(stdin.readLineSync()!);

    if (valor_01 > valor_02) {
        print('O valor informado para N1($valor_01) é MAIOR que N2($valor_02).');
    } else if (valor_01 < valor_02) {
        print('O valor informado para N1($valor_01) é MENOR que N2($valor_02)');
    } else {
        print('Os valores informados para N1($valor_01) e N2($valor_02) são IGUAIS.');
    }
    
}

