class Produto {
  String _nome = "";
  double _preco = 0.0;

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      print("Nome está vazio. Preencha.");
    }
  }

  double get preco => _preco;

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    } else {
      print("Preço inválido. Preencha com um valor maior que zero.");
    }
  }

  void exibir() {
    print("Nome do produto: $nome");
    print("Preço do produto: R\$ ${preco.toStringAsFixed(2)}");
  }
}

void main() {
  Produto produto = Produto();
  produto.nome = "Camiseta";  // Usa o setter
  produto.preco = 69.99;      // Usa o setter

  produto.exibir();
}
