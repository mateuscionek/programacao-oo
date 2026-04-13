import 'pedido.dart';
import 'carrinho.dart';
import 'cliente.dart';
import 'cupom.dart';
import 'itemcarrinho.dart';
import 'listacarrinho.dart';
import 'produto.dart';

void main() {
  Cliente c1 = Cliente('Renata', 'renata@email.com', 500.0, true);

  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);

  ItemCarrinho i1 = ItemCarrinho(p1, 2);
  ItemCarrinho i2 = ItemCarrinho(p2, 1);

  ListaCarrinho lista = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, lista, true);

  carrinho.adicionarItem(i1);
  carrinho.adicionarItem(i2);

  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);

  Pedido pedido = Pedido('001', carrinho, cupom);

  pedido.fecharPedido();

  print('Resumo do pedido:');
  pedido.exibirResumoPedido();
}