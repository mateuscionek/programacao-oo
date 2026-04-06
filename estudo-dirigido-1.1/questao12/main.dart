import 'circulo.dart';

void main() {
  Circulo c1 = Circulo(5.0, "Vermelho");
  Circulo c2 = Circulo(10.0, "Azul");
  Circulo c3 = Circulo(2.5, "Verde");

  print("Resumo");
  c1.exibirResumo();
  c2.exibirResumo();
  c3.exibirResumo();
}