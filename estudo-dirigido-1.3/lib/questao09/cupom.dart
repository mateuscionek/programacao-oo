class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo);

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.isNotEmpty) _codigo = valor;
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) _percentual = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  double calcularDesconto(double valor) {
    return valor * (_percentual / 100);
  }

  void exibirCupom() {
    print('Codigo: $_codigo');
    print('Percentual: $_percentual%');
    print('Ativo: $_ativo');
  }
}