class Aluno {
  String _ra;
  String _nome;
  double _notaFinal;

  Aluno(this._ra, this._nome, this._notaFinal);

  bool aprovado() {
    return _notaFinal >= 7.0;
  }

  void exibirBoletim() {
    print('RA: $_ra');
    print('Nome: $_nome');
    print('Nota Final: $_notaFinal');
    print('Situacao: ${aprovado() ? 'Aprovado' : 'Reprovado'}');
  }
}