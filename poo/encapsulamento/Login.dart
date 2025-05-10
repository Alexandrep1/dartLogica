class Login {
  String _senhaCorreta = "123abc";
  int _tentativasRestantes = 3;

  bool autenticar(String senha) {
    if (_tentativasRestantes == 0) {
      print("Tentativas Expiradas!");
      return false;
    }

    if (senha == _senhaCorreta) {
      print("Bem-vindo ao Sistema!");
      return true;
    } else {
      _tentativasRestantes--;
      print("Dados de acesso incorretos! Você tem $_tentativasRestantes tentativas");
      return false;
    }
  }

}
