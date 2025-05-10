/* 2. Classe Produto
Objetivo: Praticar atributos com tipos diferentes e instância de objetos.

Requisitos:
Crie uma classe Produto com os atributos: nome (String), preco (double), quantidade (int). 
Utilize um construtor

Crie um método exibirProduto() que mostre essas informações formatadas.

No main(), crie dois produtos e exiba as informações. */

class Produto {

String nome;
double preco;
int quantidade;

Produto(this.nome, this.preco, this.quantidade);

void exibirProduto(){
  print("nome $nome preço $preco quantidade $quantidade");
}

}

void main(List<String> args){
  Produto c1 = new Produto("amstel", 20, 25);
  Produto c2 = new Produto("torresmo", 9.90, 5);
  
  c1.exibirProduto();
  c2.exibirProduto();
  }