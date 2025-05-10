import 'Notificacao.dart';

class Email implements Notificacao {
  String mensagem = "E-mail enviado com sucesso!";
  @override
  String enviar(String mensagem) {
    return mensagem;
  }
}
