import 'triangulo.dart';

void main() {
  print("Triângulo Escaleno");
  Triangulo t1 = Triangulo(5, 5, 5, "▲");
  t1.exibirResumo();
  t1.desenharEsquerda();
  t1.desenharCentralizado();

  print("Triângulo 2");
  Triangulo t2 = Triangulo(3, 4, 5, "o");
  t2.setLado1(6);
  t2.exibirResumo();
  t2.desenharEsquerda();
  t2.desenharCentralizado();
}