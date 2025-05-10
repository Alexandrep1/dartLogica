/* Exercício 7 – Associação + DIP + OCP
Crie uma classe Notificador que depende de uma interface CanalDeNotificacao. 
Crie duas implementações: NotificacaoEmail e NotificacaoSMS.
 A classe Notificador deve aceitar qualquer canal sem precisar ser alterada. */

 abstract class CanalDeNotificacao {
  
  void NotificacaoEmail(){}
  void NotificacaoSMS(){}

 }

 class Notificador implements CanalDeNotificacao {

  @override
  void NotificacaoEmail() {
    print("recebendo email...");
  }

  @override
  void NotificacaoSMS() {
    print("recebendo sms...");
  }
 }

 void main(List<String> args) {
  
Notificador noti = Notificador();
noti.NotificacaoEmail();
noti.NotificacaoSMS();

}
