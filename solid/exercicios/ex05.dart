/* 
  DIP - Refatore para que RelatorioService dependa de uma abstração (interface) e não da classe concreta. 
*/

class MySQLDatabase {
  void salvar(String dado) {
    print('Salvando "$dado" no MySQL');
  }
}

class RelatorioService {
  final MySQLDatabase db;

  RelatorioService(this.db);

  void gerarRelatorio(String conteudo) {
    db.salvar(conteudo);
  }
}

// Solução respeitando o princípio DIP:

abstract class Database {
  void conectar();
  void salvar(String dado);
}

class MySQL implements Database {
  @override
  void conectar() => print("Conectando ao banco de dados");

  @override
  void salvar(String dado) => print("Salvando '$dado' no MySQL ");
}

class RelatorioServicee {
  final Database db;
  RelatorioServicee(this.db);

  void geraRelatorio(String conteudo) {
    db.conectar();
    db.salvar(conteudo);
    print("Commit realizado com sucesso!");
  }
}

void main(List<String> args) {
  RelatorioServicee relatorio = new RelatorioServicee(new MySQL());
  relatorio.geraRelatorio('Gustavo Petry');
}
