// Liste os valores de um map

void main(List<String> args) {
  Map<String, int> pessoas = {
    'Janira': 50,
    'Adilson': 54,
    'Eduardo': 28,
    'Gustavo': 25
  };

  for (int valor in pessoas.values){
    print(valor);
  };
}