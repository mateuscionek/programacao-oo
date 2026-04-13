class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(this._nome) {
    _cargo = 'Estagiario';
    _salario = 800;
  }

  Funcionario.pleno(this._nome, this._salario) {
    _cargo = 'Pleno';
  }

  Funcionario.gerente(this._nome, {double bonus = 1000}) {
    _cargo = 'Gerente';
    _salario = 5000 + bonus;
  }

  double calcularPagamentoMensal() {
    return _salario;
  }

  void exibirDados() {
    print('Nome: $_nome');
    print('Cargo: $_cargo');
    print('Salario: $_salario');
    print('Pagamento mensal: ${calcularPagamentoMensal()}');
  }
}