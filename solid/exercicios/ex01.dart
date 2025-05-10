/* 
  SRP - Refatore o código para que cada classe tenha apenas uma responsabilidade (ex: salvar usuário ou autenticar usuário). 
 */
class UsuarioManager {
  void salvarUsuario(String nome) {
    print('Usuário $nome salvo no banco de dados.');
  }

  bool autenticar(String usuario, String senha) {
    return usuario == 'admin' && senha == '123';
  }
}

// Solução respeitando o princípio SRP:
class Usuario {
  String nome;
  String usuario;
  String senha;
  Usuario(this.nome, this.usuario, this.senha);
}

class salvarUsuario extends Usuario {
  salvarUsuario(String nome, String usuario, String senha)
      : super(nome, usuario, senha);

  void salvar(String nome) {
    print("Usuário ${nome} salvo no banco de dados");
  }
}

class AutenticarUsuario extends Usuario {
  AutenticarUsuario(String nome, String usuario, String senha)
      : super(nome, usuario, senha);

  bool autenticar(String user, String password) {
    return user == usuario && password == senha;
  }
}

void main(List<String> args) {
  salvarUsuario save = new salvarUsuario('Gustavo', 'petry', '123');
  save.salvar(save.nome);

  AutenticarUsuario auth = new AutenticarUsuario('Gustavo', 'petry', '123');
  print(auth.autenticar('petry', '123'));
}
