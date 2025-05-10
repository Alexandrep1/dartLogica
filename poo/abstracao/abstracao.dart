/* 
  Asbtração é o princípio da programação orientada a objetos (POO) que permite
  ocultar os detalhes internos e mostrar apenas o que é relevante para o uso de
  uma classe ou método.
  É como dirigir um carro: você só precisa saber como usar o volante, pedais e
  marcha. Mas não precisa saber como o motor funciona.
  IMPORTANTE SOBRE CLASSES ABSTRATAS:
    - Não pode ser instanciada diretamente
    - Serve como modelo para outras classes
    - Pode ter métodos implementados e métodos sem implementação (abstratos)
 */
import './Gato.dart';
import './Cachorro.dart';

void main(List<String> args) {
  Cachorro dog = new Cachorro();
  dog.emitirSom();

  Gato cat = new Gato();
  cat.emitirSom();
  cat.dormir();
  
}
