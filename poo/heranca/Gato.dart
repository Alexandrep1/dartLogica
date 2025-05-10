import './Animal.dart';

class Gato extends Animal {
  /* 
    SOBRESCRITA DE MÉTODOS:
    A subclasse (filha) pode sobrescrever métodos da superclasse (pai) @override.
    A anotação @override é opcional, porém é mais seguro utilizar para segurança.
    no código a nível de compilação para evitar erros de digitação.
    Usar @override deixa claro que você está sobrescrevendo um método que existe
    na classe pai. Isso facilita a leitura e manutenção do código.
   */
  // Sobrescrita do método emitirSom:
  @override
  void emitirSom() {
    print("Miau");
  }
}
