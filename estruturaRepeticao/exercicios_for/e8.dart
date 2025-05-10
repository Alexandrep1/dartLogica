// Crie uma sequência de Fibonacci com os primeiros 10 números.
void main(List<String> args) {
  List<int> fibonacci = [0, 1];  

  for (int i = 0; i < 10; i++) {
    int fibonacci_add = fibonacci[i + 1] + fibonacci[i];
    fibonacci.add(fibonacci_add);
  }

  for (int i = 0; i < fibonacci.length; i++) {
    print(fibonacci[i]);
  }
}