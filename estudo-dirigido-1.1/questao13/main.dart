import 'produto.dart';
import 'pedido.dart';

void main() {
  Produto p1 = Produto("Teclado Mecânico", 250.0);
  Pedido ped1 = Pedido(1001, p1, 2);
  ped1.exibirPedido();
}