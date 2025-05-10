/* 
- OCP -> OPEN/CLOSED PRINCIPLE
 */

/* 
- Violando o princípio OCP:
 */
class Calculadora_impostos{
    double calcular(String tipoProduto) {
        if(tipoProduto == "eletrônico") {
            return 100 * 0.2;
        } else if(tipoProduto == "alimento") {
            return 50 * 0.05;
        } else {
            return 0;
        }
    }
}

/* 
- Solução respeitando o princípio OCP:
- Basta criar novas classes para cada tipo de produto, sem precisar alterar a calculadora
 */
abstract class Produto {
    double calcularImposto();
}

class Eletronico implements Produto {
    @override
    double calcularImposto() {
        return 100 * 0.2;
    }
}

class Alimento implements Produto {
    @override
  double calcularImposto() => 50 * 0.05;
}

class CalculadoraImpostos {
    double calcular(Produto produto) {
        return produto.calcularImposto();
    }
}

void main(List<String> args) {
  final calculadora = CalculadoraImpostos();
  print("Imposto sobre Eletrônicos: ${calculadora.calcular(Eletronico())}");
  print("Imposto sobre Alimentos: ${calculadora.calcular(Alimento())}");
}