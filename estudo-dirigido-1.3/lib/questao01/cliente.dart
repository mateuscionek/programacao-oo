class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;
  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }

  set email(String valor) {
    if (valor.isNotEmpty) {
      _email = valor;
    }
  }

  set saldoCarteira(double valor) {
    if (valor >= 0) {
      _saldoCarteira = valor;
    }
  }

  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  void adicionarSaldo(double valor) {
    if (valor > 0) {
      _saldoCarteira += valor;
    }
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    } else {
      print('Saldo insuficiente!');
    }
  }

  void exibirCliente() {
    print('Nome: $_nome');
    print('Email: $_email');
    print('Saldo: $_saldoCarteira');
    print('Ativo: $_ativo');
  }
}