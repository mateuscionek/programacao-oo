import 'conta.dart';
import 'gerente.dart';

void main() {
  Conta conta = Conta('Renata', 1000);

  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Sueli');

  print('Estado inicial:');
  conta.exibir();

  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();
}

//a Porque os dois recebem a referência da mesma conta
//b Ambos operam na mesma instância
//c Que em Dart objetos são passados por referência, então múltiplos objetos podem compartilhar e modificar o mesmo objeto.