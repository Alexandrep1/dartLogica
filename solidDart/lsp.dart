/* 
* SOLUÇÃO
* agora pinguim não precisa implementar voo.
*/

class Ave{
  void voar(){
    print("ave voando");
  }
}

class Pinguim extends Ave{
  void voar(){
    throw Exception("pinguins não voam");
  }

}
abstract class AveQueVoa extends Ave{
  void voar(); //metodo abstrato
}
class Androinha extends AveQueVoa{
  @override
  void voar(){
    print("andorinha voando");
  }
}
