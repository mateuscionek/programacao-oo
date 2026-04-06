import 'produto.dart';

void main() {
  print("Produto Original");
  Produto p1 = Produto(1, "Sabre de Luz", 150.0, 6); 
  p1.exibirResumo();

  print("Produto Substituído ");
  p1.setCodigo(2);
  p1.setNome("Poção Polissuco");
  p1.setPrecoUnitario(80.0);
  p1.setQuantidade(25);
  p1.exibirResumo();
}