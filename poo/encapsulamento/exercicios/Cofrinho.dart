/* 
  3. Crie uma classe Cofrinho com um atributo privado _saldo.
  Use um getter para retornar o saldo.
  O setter deve permitir adicionar valores positivos ao saldo, recusando valores
  negativos ou zero.
 */

class Cofrinho {
  double _saldo = 0.0;

  double get saldo => _saldo;

  set saldo(double novoSaldo) {
    if (novoSaldo > 0) {
      _saldo += novoSaldo;
    } else {
      print("Informe um valor maior que 0");
    }
  }

  void depositar(double valor) {
    saldo = valor;
  }
}
