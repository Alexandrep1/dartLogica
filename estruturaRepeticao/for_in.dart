/**
 * for-in é uma forma simplificada de iterar sobre coleções
 * sintaxe:
    for(item in colecao) {
      execucao;
    }
 */

void main(List<String> args) {
  // exemplo 01 - lista de cores;
  List<String> cores = ['verde', 'vermelho', 'branco'];

  for (String item in cores){
    print(item);
  }

  // exemplo 02 - iterando sobre um Map;
  Map<String, dynamic> pessoas = {
    'nome': 'Carlos',
    'idade': '39',
    'cidade': 'Blumenau'
  };

  for (var chave in pessoas.keys){
    print('$chave: ${pessoas[chave]}');
  }

  // exemplo 03 - lista com Map
  List<Map<String, dynamic>> produtos = [
    {'nome': 'cerveja heineken', 'valor': 7.99, 'estoque': 200},
    {'nome': 'pão de alho', 'valor': 14.55, 'estoque': 50},
    {'nome': 'picanha', 'valor': 399.99, 'estoque': 20},
    {'nome': 'queijo qualho', 'valor': 21.15, 'estoque': 30},
    {'nome': 'medalhão suíno', 'valor': 24.99, 'estoque': 200}
  ];

  for (var produto in produtos){
    print(produto);
    print('Produto: ${produto['nome']} | Valor: R\$${produto['valor']} | Estoque: ${produto['estoque']}');
  }

}