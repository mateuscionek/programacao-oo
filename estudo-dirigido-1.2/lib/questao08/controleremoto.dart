import 'televisao.dart';

class ControleRemoto { 
  Televisao _tv;

  ControleRemoto(this._tv);

  void aumentarVolume() {
    _tv.volume++;
  }

  void diminuirVolume() {
    _tv.volume--; 
  }

  void proximoCanal() {
    _tv.canal++; 
  }

  void canalAnterior() {
    _tv.canal--;
  }
}