abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  double largura;
  double altura;
  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() => largura * altura;
}

class Quadrado implements Forma {
  double lado;
  Quadrado(this.lado);

  @override
  double calcularArea() => lado;
}

void main(List<String> args) {
  Retangulo ret = new Retangulo(10, 5);
  Quadrado quad = new Quadrado(10);

  print(ret.calcularArea());
  print(quad.calcularArea());
}
