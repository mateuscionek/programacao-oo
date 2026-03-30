import 'semaforo.dart';

void main() {
  Semaforo s = Semaforo();
  for (int i = 0; i < 7; i++) {
    s.exibirEstado();
    s.reduzirTempo();
  }
}