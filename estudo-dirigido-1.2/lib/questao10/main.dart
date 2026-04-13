import 'caixa.dart';
void alterarValor(Caixa c) {
  c.valor = 50; 
}

void trocarCaixa(Caixa c) {
  c = Caixa(99); 
}

void main() {
  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('\nDepois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('\nDepois de trocarCaixa:');
  caixa.exibir();
}

//a pois alterou o objeto real na memoria
//b a função só muda o ponteiro, nao o valor oriignal
//c alterar atributos muda para todos, trocar o objeto muda apenas para a função