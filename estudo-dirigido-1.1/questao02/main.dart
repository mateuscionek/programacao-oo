import 'relogio.dart';

void main() {
  Relogio r1 = Relogio(8, 30, 0);
  Relogio r2 = Relogio(15, 45, 12);
  Relogio r3 = Relogio(3, 15, 9);

  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}