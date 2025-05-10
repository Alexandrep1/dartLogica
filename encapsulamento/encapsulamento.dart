/* 
encapsulamento é o conceito de ocultar os detalhes internos de uma classe e controlar o acesso aos seus
atributos e métodos.
ele ajuda a manter o controle sobre os dados, evitando quesejam modificados
diretamente de fora da classe

beneficios
protege os dados internos da classe
garante que os dados sejam acessados/modificados de maneira segura e controlada
facilita a mnautentação e evolução do codigo no dart
usamos_(underscode) no inicio do nome de variaveis ou métodos para torna-los privados ou
arquivo onde estão sendo definidos.
 */

import 'ContaBancaria.dart';
import 'Produto.dart';

void main(List<String> args) {

  ContaBancaria conta = ContaBancaria("alek");
  print(conta.getSaldo());
  if(conta.depositar(100)){
    print("depoisto efetuado com sucesso");
    print("saldo atual: ${conta.getSaldo()}");
  }

  if(conta.sacar(50)){
    print("saque efetuado");
    print("saldo atual: ${conta.getSaldo()}");
  } else {
    print("saldo insuficiente");
  }

  /* 
    getter e setter
    em poo getter e setter são métodos usados para acessar (get) e modificar
    (set) valores de atributos privados de uma classe.
    no dart eles são usados como atributos normais, mas por trás voce tem uma
    lógica de controle para alterar valores privados.
    por que usar?
    para proteger dados sensiveis de uma classe
    para validar valores antes de alterar
    para aplicar regras de negócios para acaessar ou definir valores
  
   */


  Produto p = Produto();
  p.nome = "Caneta"; //chamado setter
  p.preco = 2.5; //chamando setter
  // p.nome e p.preco sao getters
  print("produto: ${p.nome} preço: ${p.preco}");
  }