abstract class Database {
  void salvar(String dado);
}

class MySqlDatabase implements Database {
  @override
  void salvar(String dado) {
    print("Dado '$dado' salvo com sucesso");
  }
}

class RelatorioService {
  final Database db;
  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    print("Relatório gerado: $conteudo");
    db.salvar(conteudo);
  }
}

void main(List<String> args) {
  RelatorioService relatorio = new RelatorioService(new MySqlDatabase());
  relatorio.gerarRelatorio('Gustavo Petry');
}
