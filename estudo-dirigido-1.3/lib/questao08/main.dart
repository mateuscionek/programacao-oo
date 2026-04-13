import 'cupom.dart';

void main() {
  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);

  print('Cupom inicial:');
  cupom.exibirCupom();

  cupom.percentual = 20.0;
  print('Cupom apos alterar percentual:');
  cupom.exibirCupom();

  double valor = 200.0;
  print('Desconto de ${cupom.percentual}% sobre $valor: ${cupom.calcularDesconto(valor)}');

  cupom.desativar();
  print('Cupom apos desativar:');
  cupom.exibirCupom();
}