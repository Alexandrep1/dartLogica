/* 
  2. Crie uma classe abstrata Imposto com:
  - Um método abstrato calcular(double valor).
  - Um método concreto exibirImposto(double valor) que chama calcular e imprime o 
    valor do imposto.
  - Depois, crie a classe ImpostoRenda (15%) e ImpostoProduto (7%) que implementam 
    calcular.
 */

abstract class Imposto {
  double calcular(double valor);

  void exibirImposto(double valor) {
    print("Imposto sobre R\$$valor: R\$${calcular(valor).toStringAsFixed(2)}");
  }
}
