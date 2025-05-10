/* 
Herança é um dos pilares da programação orientada a objetos (POO).
Ela permite que um classe herde atributos e métodos de outra classe, 
promovendo a reutilização de códigos e especialização de comportamento.

Termo         |      Explicação
Superclasse   |   A classe base que será herdada (também chamada 'classe pai')
Subclasse     |   A classe que herda da superclasse (também chamada 'classe filha')
Extends       |   Palavra-chave usada para definir herança
Super         |   Palavra-chave usada para acessar membros da superclasse
 */

import './Aluno.dart';
import 'Cachorro.dart';
import 'Gato.dart';

void main(List<String> args) {
  Cachorro dog = new Cachorro();
  dog.dormir();
  dog.latir();

  Gato cat = new Gato();
  cat.emitirSom(); // exibe a sobrescrita do método
  dog.emitirSom(); // exibe o método da classe pai

  /* 
    CONSTRUTORES E SUPER:
    A subclasse pode chamar o construtor da classe pai usando a palavra 'super'
   */
  Aluno aluno = new Aluno('Gustavo Petry', 'Flutter');
  print('O aluno ${aluno.nome}, está cursando ${aluno.curso}');
}
