import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(3.0, "#");
  Quadrado q2 = Quadrado(5.0, "@");

  q1.exibirResumo();
  q1.desenhar();
  q2.exibirResumo();
  q2.desenhar();
}