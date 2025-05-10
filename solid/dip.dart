/* 
  DIP -> DEPENDENCY INVERSION PRINCIPLE
 */

/* 
  Exemplo violando o princípio DIP:
  - O UsuarioService depende diretamente de uma classe concreta
 */
class MySqlDatabase {
  void conectar() {
    print("Conectado ao banco de dados");
  }
}

class UsuarioService extends MySqlDatabase {
  final MySqlDatabase database;
  UsuarioService(this.database);

  void executar() {
    database.conectar();
  }
}

/* 
  Solução respeitando o princípio DIP:
 */
abstract class Database {
  void conectar();
}

class MySql implements Database {
  @override
  void conectar() {
    print("Conectado ao MySQL");
  }
}

class UsuarioServicee {
  final Database database;
  UsuarioServicee(this.database);

  void conectar() {
    database.conectar();
  }

}