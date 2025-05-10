/**
 * o switch case é utilizado quando você precisa verificar múltiplas condições para uma única expressão (variável)
 */

void main(List<String> args) {
  int dia = 10;

  switch(dia){
    case 1:
      print('Segundou');
      break;

    case 2 || 3 || 4:
      print('Bora trabalhar');
      break;

    default:
      print('Descansa que amanhã é segunda');
  }
}