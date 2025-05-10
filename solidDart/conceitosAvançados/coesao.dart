/* 
ACOPLAMENTO E COESÃO
Refere-se ao nível de foco e responsabilidade única de uma classe.
uma classe coesa faz apenas uma coisa e faz bem feito
alta coesão facilita manutenção, tsetes e reutilização
exemplo
uma classe RelatorioPDF deve gerar PDF e não cuidar da autenticação do usuário
exemplo de coesão baixa (má prática)
 */
 class RelatorioBaguncado{
  void gerarPDF(){
    print("gerando PDF");
  }
  void autenticar(){
    print("autenticando...");
  }
  void enviarEmail(){
    print("enviando e-mail");
  }
 }

 //essa classe faz muita coisa ou seja, baixa coesão

 //exemplo com alta coesão
 //a classe tem apenas uma responsabilidade gerando alta coesão e desacoplamento
 class gerarRelatorio{
  void gerar(){
    print("gerando relatório");
  }
 }

 class Email{
    void enviarEmail(){
      print("enviando email");
    }
 }

 class Auth {

   bool login(String user, String password){
    if(user == "abc" && password == "123"){
      return true;
    }
    return false;
   }

 }