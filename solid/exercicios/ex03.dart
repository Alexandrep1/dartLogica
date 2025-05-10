/* 
  LSP - Refatore para que Quadrado não quebre o comportamento esperado do Retangulo. Ou, se necessário, crie uma hierarquia adequada.
 */
class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double area() => largura * altura;
}

class Quadrado extends Retangulo {
  Quadrado(double tamanho) : super(tamanho, tamanho);
}

// Solução respeitando o principío LSP:
abstract class Forma {
  double CalcularArea();
}

class Retanguloo implements Forma {
  double largura;
  double altura;
  Retanguloo(this.largura, this.altura);

  @override
  double CalcularArea() {
    return largura * altura;
  }
}

class Quadradoo implements Forma {
  double lado;
  Quadradoo(this.lado);

  @override
  double CalcularArea() {
    return lado * lado;
  }
}

void main(List<String> args) {
  Quadradoo quadrado = new Quadradoo(10);
  Retanguloo retangulo = new Retanguloo(10, 5);

  print(quadrado.CalcularArea());
  print(retangulo.CalcularArea());
}