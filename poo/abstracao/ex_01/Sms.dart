import 'Notificacao.dart';

class Sms implements Notificacao {
  String mensagem = "SMS enviado com sucesso!";

  @override
  String enviar(String mensagem) {
    return mensagem;
  }
}
