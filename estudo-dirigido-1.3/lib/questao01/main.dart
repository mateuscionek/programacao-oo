import 'cliente.dart';

void main() {
  Cliente c1 = Cliente('Mateus', 'mateus@email.com', 100.0, true);
  Cliente c2 = Cliente('Renata', 'renata@email.com', 50.0, false);

  print('Cliente 1 ');
  c1.exibirCliente();

  c1.nome = 'Mateus';
  c1.adicionarSaldo(200.0);

  print(' Cliente 1');
  c1.exibirCliente();

  print('Cliente 2 ');
  c2.exibirCliente();

  c2.ativar();
  c2.debitarSaldo(30.0);

  print(' Cliente 2 ');
  c2.exibirCliente();
}