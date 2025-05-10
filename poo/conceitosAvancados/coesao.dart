/* 
  * ACOPLAMENTO E COESÃO:
    - refere-se ao nível de foco e responsabilidade única de uma classe
    - uma classe coesa faz apenas uma coisa e faz bem feito
    - alta coesão facilita manutenção, testes e reutilização do código

    * Exemplo alta coesão:
      - uma classe RelatorioPDF deve gerar PDF e não cuidar da autenticação
        do usuário
 */

// Exemplo de baixa coesão:
class RelatorioBaguncado {
  void gerarPDF() {
    print("Gerando PDF");
  }

  void autenticar() {
    print("Autenticando...");
  }

  void enviarEmail() {
    print("Enviado E-mail");
  }
}
// Essa classe faz muita coisa (God Class), ou seja => Baixa Coesão!

/*
 * Exemplo com Alta Coesão (ótima prática):
    - a classe tem apenas uma responsabilidade gerando alta coesão e 
      desaclopamento
  */
class GerarRelatorio {
  void gerar() {
    print("Gerando relatório");
  }
}

class Email {
  void enviarEmail() {
    print("Enviando email");
  }
}

class Auth {
  bool login(String user, String password) {
    if(user == "admin" && password == "123") {
      return true;
    }
    return false;
  }
}
