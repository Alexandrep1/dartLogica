// ignore_for_file: unused_local_variable

void main(List<String> args) { 
  Set<int> numeros = {};

  //adicionando elementos no set
  numeros.add(10);
  numeros.add(20);
  numeros.add(30);
  numeros.add(40);
  numeros.add(10); //não será adicionado, pois já consta neste 'set'.

  print(numeros);

  //removendo elementos do set
  numeros.remove(30);
  print(numeros);

  //criar um set a partir de uma lista
  var novoSet = Set.of([100, 200, 300]); /*utiliza 'var' pois a função 'of' pode receber 
                                          como argumento variados tipos de dados (set, list)
                                          */
  print(novoSet);

  //verificar se um item especifico existe em um set
  print(novoSet.contains(10)); //retorna 'false'
  print(novoSet.contains(200)); //retorna 'true'

  //descobrir o tamanho do set
  print(numeros.length); //retorna quantos elementos existe no set 'numeros'

  //converter uma lista para set
  List<int> lista = [1, 2, 3, 4, 5];
  Set<int> conversao = lista.toSet();
  print(conversao);

  //operações com set
  Set<int> setA = {10, 20, 30, 40, 50};
  Set<int> setB = {40, 50, 60, 100};

  print(setA.union(setB)); //faz a união do 'setA' com o 'setB' sem repetir elementos.

  //interseção (pegar apenas elementos comuns)
  print(setA.intersection(setB));

  //pegar apenas itens diferentes, que constam no 'setA' mas não constam no 'setB'
  print(setA.difference(setB));

}