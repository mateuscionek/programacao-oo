import 'contador.dart';

void main() {
  print("Contador1");
  Contador c1 = Contador(10);
  c1.incrementar();
  c1.decrementar();
  c1.exibirValor();
  c1.zerar();
  c1.exibirValor();

  print("\nContador2 ");
  Contador c2 = Contador(1);
  c2.decrementar();
  c2.decrementar();
  c2.exibirValor();
}