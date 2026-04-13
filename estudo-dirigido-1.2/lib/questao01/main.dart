import 'lampada.dart';

void main() {
  Lampada lamp = Lampada();
  lamp.exibirEstado();

  lamp.ligar(); 
  lamp.aumentar();
  lamp.aumentar();
  lamp.exibirEstado();

  lamp.diminuir();
  lamp.desligar();
  lamp.exibirEstado();
}