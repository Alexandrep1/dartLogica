/* 
herança é um dos pilares da programação orientada a objetos (POO).
ela permite que uma classe herde atributos e métodos de outra classe, promovendo a reutilização de cídogo
e especialização do comportamento.

termoo        |       explicação
superclasse   |   a classe base será herdada (também chamada de classe pai)
subclasse     |   a classe que herda da superclasse (também chamada de classe)
extends       |   palavra-chave usada para definir herança
super         |   palavra-chave usada para acessar membros da superclasse 
 */


import 'Aluno.dart';
import 'Cachorro.dart';
import 'Gato.dart';

void main(List<String> args) {
  Cachorro dog = new Cachorro();
  dog.dormir();
  dog.latir();
 
  /* 
   SOBRESCRITA DE MÉTODOS
   a subclasse (filha) pode sobrescrever métodos da superclasse (pai) @override
   a anotação @override é opcional, porém é mais seguro utilizar para segurança no código a nivel
   de compilação para evitar erros de digitação
   usar @override deixa claro que voce esta sobrescrevendo um método que existe na classe pai. Isso
   facilita a leitura e manutenção do código
   */

  Gato cat = new Gato();
  cat.emitirSom();

  /* 
    CONSTRUTORES E SUPER
    a subclasse pode chamar o construtor da classe pai usando a palavra super
   */

  Aluno aluno = Aluno("alexandre", "flutter");
  print("o aluno ${aluno.nome} está cursando ${aluno.curso}");
}