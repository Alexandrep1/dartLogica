// // Exiba todos os números primos de 1 a 50.

void main(List<String> args) {
  

  for (int num = 2; num <= 50; num++) {
    bool eh_primo = true;

    for (int i = 2; i < num; i++) {
      if (num % i == 0){
        eh_primo = false;
        break;
      }
    }

    if (eh_primo) {
      print(num);
    }
  
  }

}


