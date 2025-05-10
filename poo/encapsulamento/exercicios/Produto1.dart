/* 
  1. Crie uma classe Produto com nome e um atributo privado _preco.
  O setter de preco só deve permitir valores maiores que zero.
  No main(), tente definir preços válidos e inválidos.
 */

class Produto {
  String nome;
  double _preco = 0.0;
  Produto(this.nome);

  double get preco => _preco;

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    } else {
      print("O preço deve ser maior que 0");
    }
  }
}
