/* Exercício 5 – Agregação + LSP + Coesão
Implemente uma classe FormaGeometrica, e duas subclasses: Quadrado e Retangulo. Ambas devem ser tratadas 
igualmente em uma função que soma áreas. A função deve respeitar o princípio da substituição de Liskov (LSP) e manter boa coesão. */


abstract class FormaGeometrica {

  double calcularArea();
}

class Quadrado extends FormaGeometrica {

  final double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }

}

class Retangulo extends FormaGeometrica {

  final double largura;
  final double altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    return largura * altura;
  }
}

double somarAreas(List<FormaGeometrica> formas){
  double soma = 0;
  for(var forma in formas){
    soma += forma.calcularArea();
  }
  return soma;
}

void main(List<String> args) {
  
  var formas = <FormaGeometrica>[
    Quadrado(3),
    Retangulo(1, 10),
    Quadrado(9),
    Retangulo(1, 1),
  ];

  double total = somarAreas(formas);
  print("soma das áreas: $total");
}