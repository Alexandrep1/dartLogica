import 'Cofrinho.dart';
import 'Estoque.dart';
import 'Pessoa.dart';
import 'Produto1.dart';
import 'Produto2.dart';

void main(List<String> args) {
  // Exercicio 01 (Produto1):
  Produto p1 = new Produto("Cerveja Heineken");
  print("Produto: ${p1.nome} | Preço: R\$${p1.preco}");
  p1.preco = -1; // Set inválido;
  p1.preco = 5.49; // Set válido;
  print("Produto: ${p1.nome} | Preço: R\$${p1.preco}\n");

  // Exercicio 02 (Pessoa):
  Pessoa ps = new Pessoa("Gustavo");
  print("Nome: ${ps.nome} | Idade: ${ps.idade}");
  ps.idade = 121; // Set inválido;
  ps.idade = 0; // outro Set inválido;
  ps.idade = 26; // Agora sim, Set válido;
  print("Nome: ${ps.nome} | Idade: ${ps.idade}\n");

  // Exercicio 03 (Cofrinho):
  Cofrinho c = new Cofrinho();
  c.depositar(-10); // Set inválido;
  c.depositar(0); // outro Set inválido;
  c.depositar(150); // Agora sim, Set válido;
  print("Saldo da conta: ${c.saldo}\n");

  // Exercicio 04 (Produto2)
  Produto2 p2 = new Produto2();
  p2.name = "";
  p2.name = "cerveja";
  print("Produto: ${p2.nome}");
  p2.name = "arroz";
  print("Produto: ${p2.nome}");
  p2.name = "   fEIJÃO";
  print("Produto: ${p2.nome}\n");

  // Exercicio 05 (Estoque):
  Estoque e = new Estoque();
  e.quantidade = -5; // Set inválido;
  e.quantidade = 100; // Set válido;
  print("Estoque atual: ${e.quantidade}\n");
}
