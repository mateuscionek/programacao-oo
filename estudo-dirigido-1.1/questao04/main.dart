import 'lampada.dart';

void main() {
  Lampada l1 = Lampada();

  l1.ligar();
  l1.exibirEstado();

  l1.desligar();
  l1.exibirEstado();

  l1.ligar();
  l1.ligar();
  l1.ligar();
  l1.ligar();

  l1.exibirEstado();
}