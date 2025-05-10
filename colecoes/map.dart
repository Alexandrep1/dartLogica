// ignore_for_file: unused_local_variable

void main(List<String> args) {
  Map<String, int> idades = {
    'Alice': 10,
    'Enzo': 4,
    'José': 18
  };

  //criando map de uma forma diferente
  Map<String, String> paises = Map();
  paises['BR'] = 'Brasil';
  paises['US'] = 'Estados Unidos';

  print(paises['BR']);

  print(idades['Alice']);

  //adicionando e modificando valores
  idades['Enzo'] = 5; //modificando uma variável existente

  idades.remove('Enzo'); //remover itens

  //verificando se uma chave existe no map
  print(idades.containsKey('Alice')); //retorna um booleano
  print(idades.containsKey('Enzo'));

  //verificando se um valor existe no map
  print(idades.containsValue(10)); //retorna um booleano
  print(idades.containsValue(50));

  //obter apenas chaves ou valores
  print(idades.keys.toList()); //retorna uma lista com todas as chaves do map 'idades'
  print(idades.values.toList()); //retorna uma lista com todos os valores do map 'idades'

  //filtrar valores em um Map
  Map<String, int> menores = Map.fromEntries(idades.entries
    .where((entry) => entry.value < 17)); //cria um map 'menores' filtrado, a partir do map 'idades'
  print(menores);

}

