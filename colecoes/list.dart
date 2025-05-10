void main(){
  List<int> numeros = [1, 2, 3, 4, 5];

  print(numeros);

  //adicionando itens na lista
  numeros.add(6);
  print(numeros);

  //adicionando varios itens na lista
  numeros.addAll([7, 8, 9]);
  print(numeros);

  //inserindo um valor em um ponto especifico da lista
  numeros.insert(0, -1);
  print(numeros);

  //removendo itens na lista
  numeros.remove(-1);
  print(numeros);

  //remover item pelo indice
  numeros.removeAt(0);
  print(numeros);

  //remover o ultimo item da lista
  numeros.removeLast();
  print(numeros);

  //remover item de forma condicional
  numeros.removeWhere((numero) => numero % 2 == 0);
  numeros.removeWhere((numero) => numero.isEven);
  print(numeros);

  //acessando elementos
  print(numeros[1]); //acessando um elemento pelo index
  print(numeros.first); //acessando o primeiro elemento 
  print(numeros.last); //acessando o ultimo elemento

  //modificar o valor de um elemento pelo indice
  numeros[2] = 22;
  print(numeros);

  //descobrindo dados da lista
  print(numeros.length); //tamanho da lista
  print(numeros.contains(2)); //verificando se existe um numero especifico na lista
  print(numeros.indexOf(22)); //buscar o index de um item

  //ordenação crescente
  numeros = [5, 4, 3, 2, 1];
  numeros.sort();
  print(numeros);

  //ordenação decrescente
  numeros = [1, 2, 3, 4, 5];
  numeros.sort((a, b) => b.compareTo(a));
  print(numeros);
}