abstract class Database{
  void salvar(String dado);
}

class MysqlDatabase implements Database{
  @override
  void salvar(String dado){
    print("Dado $dado salvo com sucesso. ");
  }
}

class RelatorioService{
  final Database db;

  RelatorioService(this.db);

  void gerarRelatorio(String conteudo){
    print("exibindo relatório: $conteudo");
    db.salvar(conteudo);
  }
}