import 'Email.dart';
import 'Sms.dart';

void main(List<String> args) {
  Email e = new Email();
  print(e.enviar(e.mensagem));

  Sms s = new Sms();
  print(s.enviar(s.mensagem));
}
