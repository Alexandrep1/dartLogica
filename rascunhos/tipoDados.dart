// ignore_for_file: unused_local_variable

/**
 * dart é uma linguagem tipada onde os tipos de dados são usados para determinar que tipo de valor elas podem armazenar.
 * por ser fortemente tipada, cada variável, função e etc deverá ter uma definição de tipo de dado.
 */
void main(){
  /**
   * TIPOS NUMÉRICOS
   * INT - numeros inteiros sem casas decimais
   * DOUBLE - numeros com ponto flutuante e casas decimais
   */
  int idade = 25;
  double altura = 1.75;

  String pessoa = 'marcelo';
  double salario = 52.125;

  print(idade);
  print(altura);

/**
 * TIPO STRING
 * suporta caracteres hexadecimais como letras, números, traços e etc
 * a string pode ser criada com aspas simples '' ou duplas ""
 * pode contar multiplas linhas usando aspas triplas
 */
  String nome = 'Gustavo';
  String saudacao = 'Bem vindos a aula de Flutter';
  String multiplasLinhas = '''
  Aqui consigo fazer uma string com
  multiplas linhas
  que efetua quebra de linha automaticamente
  conforme o texto
  ''';
  print(nome + saudacao);
  print(saudacao);
  print(multiplasLinhas);

  /**
   * TIPO BOOLEAN - BOLEANO
   * representa um tipo de dado verdadeiro ou falso (true ou false)
   */
  bool isFlutter = true;
  bool isJavaScript = false;

  /**
   * TIPO LIST
   * representa uma coleção ordenada de elementos (semelhante a array em outras linguagens)
   */
  List<String> frutas = ['Banana', 'Melancia', 'Laranja'];
  List<String> carros = [
    'Gol',
    'Corsa',
    'Mercedes',
    'Corolla'
  ];
  print(frutas[0]);

  List<int> valores = [10, 20, 30, 40];

  /**
   * TIPO SET
   * é uma coleção de itens únicos não duplicados
   */
  Set<int> relacoes = {2, 4, 6, 8};

  /**
   * TIPO MAP
   * representa um conjunto ou objeto contendo propriedade:valor
   */
  Map<String, int> alunos = {
    'João': 20,
    'Maria': 15,
    'José': 44
  };

  print(alunos['João']);

  Map<String, String> cores = {
    'black': '#000000',
    'red': '#FF6600',
    'gray': '#CCCCCC'
  };

  print(cores['black']);

  /**
   * TIPO DYNAMIC
   * usado quando o tipo de dado é indefinido ou pode mudar
   */
  dynamic semTipo = 30;
  semTipo = 'Diego';
}

  /**
  * TIPO NULL
   * o tipo 'null safety' foi incorporado ao dart na versão 2.12, por padrão uma variavel não pode conter null, mas você pode usar operador '?' para permitir valores nulos
  */
  String? pessoa = null;

  /**
   * TIPO VAR
   * o dart interfere automaticamente no tipo de variavel com base no valor atribuido.
   * isso funciona como uma tipagem dinâmica.
   */
  var ano = 2024;
  var aluno = 'Maria';