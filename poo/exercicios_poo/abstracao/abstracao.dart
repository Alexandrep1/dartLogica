/* 
abstração é o principio da programação orientada a objetos(POO) que permite ocultar os detalhes internos
e mostrar apenas o que é relevante para o uso de uma classe ou metodo.
É como dirigir um carro: voce só precisa saber como usar o volante, pedais e marcha.
Mas não precisa saber como o motor funciona.
IMPORTANTE SOBRE CLASSES ABSTRATAS
- uma classe abstrata nao pode ser instanciada diretamente
- serve como modelo para outras classes
- pode ter método implementados e métodos se implementação (abstratos)
 */

import 'Cachorro.dart';
import 'Gato.dart';
import 'PagamentoCartao.dart';
import 'PagamentoPix.dart';

void main(List<String> args) {
  
  Cachorro dog = Cachorro();
  dog.emitirSom();

  Gato cat = Gato();
  cat.emitirSom();

  // usando interface através do implements
  // quando usamos implements, a classe é obrigada a implementar tudo que existe na classe
  // abstrata, incluindo métodos já implementados

  //exemplo com meios de pagamento
  PagamentoPix pix = PagamentoPix(300);
  pix.realizarPagamento();
  pix.emitirComprovante();

  //pagamento cartão
  PagamentoCartao cartao = PagamentoCartao(300, 3);
  cartao.realizarPagamento();
  cartao.emitirComprovante();
}