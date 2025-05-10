class Aluno {
  String nome;
  double _nota = 0.0;
  Aluno(this.nome);

  double get nota => _nota;

  set nota(double novaNota) {
    if (novaNota >= 0 && novaNota <= 10) {
      _nota = novaNota;
    } else {
      print("A nota está fora do intervalo permitido");
    }
  }

  // Sintaxe com Arrow Function:
  String get situacao => _nota >= 7 ? "Aprovado" : "Reprovado";

  // Sintaxe de Bloco:  
  String get situacaoAluno {
    if (_nota >= 7) {
      return "Aprovado!";
    } else {
      return "Reprovado!";
    }
  }
}
