import 'contador.dart';

void main() {
  Contador c1 = Contador(5);
  c1.incrementar();
  c1.exibirValor();

  c1.decrementar();
  c1.exibirValor();
  c1.zerar();
  c1.exibirValor();
}