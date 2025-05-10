void main(List<String> args) {
  for (int num = 2; num < 51; num++) {
    bool ehPrimo = true;

    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        ehPrimo = false;
        break;
      }
    }
    
    if (ehPrimo) {
      print(num);
    }
  }
}

