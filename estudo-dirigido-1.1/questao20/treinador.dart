import 'pokemon.dart';

class _Treinador {
  String _nome;
  Pokemon _p1, _p2, _p3;

  _Treinador(this._nome, this._p1, this._p2, this._p3);

  int calcularPoderTotal() => _p1._nivel + _p2._nivel + _p3._nivel;

  Pokemon pokemonMaisForte() {
    Pokemon forte = _p1;
    if (_p2._nivel > forte._nivel) forte = _p2;
    if (_p3._nivel > forte._nivel) forte = _p3;
    return forte;
  }

  void exibirTime() {
    print("Treinador: ${_nome} | Poder Total: ${calcularPoderTotal()}");
    print("O mais forte é: ${pokemonMaisForte()._nome}!\n");
  }
}