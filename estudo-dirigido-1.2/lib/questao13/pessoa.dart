import 'carteira.dart';

class Pessoa {
  String _nome;
  Carteira carteira;

  Pessoa(this._nome, this.carteira);

  void exibir() {
    print('Pessoa: $_nome');
    carteira.exibir();
  }
}