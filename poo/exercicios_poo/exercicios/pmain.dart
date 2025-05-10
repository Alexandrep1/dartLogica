import 'Email.dart';
import 'Sms.dart';

void main(List<String> args) {
  
  Email email = new Email();
  Sms sms = new Sms();

  email.enviar("exibindo mensagem");
  sms.enviar("exibindo mensagem");
}