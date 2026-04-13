import 'itemcarrinho.dart';
import 'produto.dart';

void main() {
  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);

  ItemCarrinho i1 = ItemCarrinho(p1, 2);
  ItemCarrinho i2 = ItemCarrinho(p2, 1);

  print('Item 1:');
  i1.exibirItem();

  i1.quantidade = 3;
  print('Item 1 apos alterar quantidade:');
  i1.exibirItem();

  print('Item 2:');
  i2.exibirItem();
}