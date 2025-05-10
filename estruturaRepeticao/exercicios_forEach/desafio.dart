void main(List<String> args) {
  List<Map<String, dynamic>> produtos = [
    {'Nome': 'Arroz', 'Preço': 5, 'Estoque': 0},
    {'Nome': 'Feijão', 'Preço': 8, 'Estoque': 5},
    {'Nome': 'Macarrão', 'Preço': 10, 'Estoque': 5},
    {'Nome': 'Azeite', 'Preço': 15, 'Estoque': 10},
    {'Nome': 'Trigo', 'Preço': 3, 'Estoque': 0},
  ];

  List<Map<String, dynamic>> novosPrecos = [];

  print('PRODUTOS ORIGINAIS: ');
  produtos.forEach((produto){
    print('${produto['Nome']}: R\$${produto['Preço']} | Estoque: ${produto['Estoque']}');

    if (produto['Estoque'] > 0) {
      novosPrecos.add({'Nome': produto['Nome'], 'Preço': produto['Preço'] * 1.1});
    }
  });

  print('');

  print('NOVOS PREÇOS');
  novosPrecos.forEach((produto){
    print('${produto['Nome']}: R\$${produto['Preço']}');
  });

}