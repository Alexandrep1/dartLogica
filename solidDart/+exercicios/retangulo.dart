abstract class Forma{
  double calcularArea();
}

class Retangulo  implements Forma {
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
  double calcularArea() => lado * lado;
}