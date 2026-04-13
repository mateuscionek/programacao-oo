class Caixa{
  int _valor;

  Caixa(this._valor);

  int get valor => _valor;
  set valor  (int novoValor) => _valor = novoValor;

  void exibir() {
    print('Valor: $_valor');
  }
}