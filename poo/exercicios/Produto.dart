/* 2. Classe Produto
Objetivo: Praticar atributos com tipos diferentes e instância de objetos.

Requisitos:
Crie uma classe Produto com os atributos: nome (String), preco (double), quantidade (int). 
Utilize um construtor

Crie um método exibirProduto() que mostre essas informações formatadas.

No main(), crie dois produtos e exiba as informações.
*/

class Produto {
  // atributos:
  String nome;
  double preco;
  int quantidade;

  Produto(this.nome, this.preco, this.quantidade);

  // método:
  String exibirProduto() {
    return "Produto: ${nome} | Valor: ${preco} | Quantidade: ${quantidade}";
  }
}

// main() no mesmo arquivo da Classe apenas para simplificar o exercício
void main(List<String> args) {
  Produto arroz = new Produto("Arroz", 5.49, 100);
  Produto feijao = new Produto("Feijão", 6.35, 150);

  print(arroz.exibirProduto());
  print(feijao.exibirProduto());
}
