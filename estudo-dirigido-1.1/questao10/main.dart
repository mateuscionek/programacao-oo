import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(4.0, "#");
  Quadrado q2 = Quadrado(2.0, "@");
  
  Quadrado q3 = Quadrado(3.0, "X");
  Quadrado q4 = Quadrado(3.0, "X");

  print("Quadrado 1");
  q1.exibirResumo();
  q1.desenhar();

  print("Quadrado 2");
  q2.exibirResumo();
  q2.desenhar();

  print("--- Comparação ---");
  print("Q1 é igual a Q2? ${q1.ehIgual(q2)}");
  print("Q3 é igual a Q4? ${q3.ehIgual(q4)}");
}