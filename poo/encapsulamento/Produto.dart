class Produto {
  String _nome;
  double _preco;
  Produto(this._nome, this._preco);

  // Definindo um GETTER:
  String get nome => _nome;
  double get preco => _preco;

  // Definindo um SETTER:
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      print("Nome não pode ficar vazio");
    }
  }

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    } else {
      print("Preço inválido");
    }
  }
}
