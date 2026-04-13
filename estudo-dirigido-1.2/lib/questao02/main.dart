import 'produto.dart';

void main() {
  Produto p = Produto('Camiseta', 49.90, 10);

  p.exibirFicha();

  p.vender(3);
  p.exibirFicha();

  p.repor(5);
  p.exibirFicha();

  p.vender(20);
}