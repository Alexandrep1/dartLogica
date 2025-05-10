/* 
Classe com construtor definido:
O contrutor é um método especial chamado ao instanciar objetos a partir de
uma classe. Ele é chamado automaticamente quando usamos o new para instanciar
objetos de uma classe 
*/

class Animal {
  String nome;
  double peso;
  String raca = 'indefinido';

  // Definindo construtor:
  Animal(this.nome, this.peso);

  // Métodos:
  void comer() {
    print('$nome está comendo');
  }


}
