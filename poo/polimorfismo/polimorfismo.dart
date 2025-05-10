import 'Arqueiro.dart';
import 'Guerreiro.dart';
import 'Mago.dart';
import 'Personagem.dart';

/* 
Polimorfismo significa "muitas formas" do grego: poli = muitos e morphos = formas.
na POO o polimorfismo permite que objetos de diferentes classes possam ser 
tratados de forma uniforme, desde que compartilhem uma interface comum 
(ou herança de uma superclasse ou classe abstrata)
- VANTAGENS:
  o Polimorfismo permite escrever código mais genérico, reutilizável e flexivel,
  facilitando futuras extensões sem alterar o código.
 */

void main(List<String> args) {
  List<Personagem> personagens = [Guerreiro(), Mago(), Arqueiro()];

  for (var personagem in personagens) {
    personagem.atacar(); // todos usam o mesmo método com comportamentos distintos
  }
}
