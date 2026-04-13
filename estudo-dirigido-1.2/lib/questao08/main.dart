import 'televisao.dart';
import 'controleremoto.dart';

void main() {
  Televisao tv = Televisao(12, 23);
  
  ControleRemoto controle = ControleRemoto(tv); 

  print('inicio:');
  tv.exibir();

  controle.aumentarVolume();
  controle.proximoCanal(); 

  print('depois:');
  tv.exibir();
}

//a)pois a tv foi importada para o controle remoto, tendo acesseo a tv
//b)sim, pois o controle remoto tem acesso a tv podendo alterar seus atributos