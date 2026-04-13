import 'conta.dart';

class Gerente {
  String _nome;

  Gerente(this._nome);

  void depositar(Conta conta, double valor) {
    print('$_nome depositando $valor...');
    conta.depositar(valor);
  }

  void sacar(Conta conta, double valor) {
    print('$_nome sacando $valor...');
    conta.sacar(valor);
  }
}