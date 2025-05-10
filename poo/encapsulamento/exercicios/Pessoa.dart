/* 
  2. Crie a classe Pessoa com nome e _idade.
  O setter de idade deve aceitar apenas valores entre 0 e 120.
 */

class Pessoa {
  String nome;
  int _idade = 0;
  Pessoa(this.nome);

  int get idade => _idade;

  set idade(int novaIdade) {
    if (novaIdade > 0 && novaIdade <= 120) {
      _idade = novaIdade;
    } else {
      print("Idade fora do intervalo permitido");
    }
  }
}
