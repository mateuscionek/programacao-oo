class Aluno {
  String _nome;
  double _nota1;
  double _nota2;

  Aluno(this._nome, this._nota1, this._nota2) {
    if (this._nota1 < 0 || this._nota1 > 10) this._nota1 = 0;
    if (this._nota2 < 0 || this._nota2 > 10) this._nota2 = 0;
  }

  double calcularMedia() => (_nota1 + _nota2) / 2;

  String verificarAprovacao() => calcularMedia() >= 6.0 ? "Aprovado" : "Reprovado";

  void exibirBoletim() {
    print("Boletim de $_nome - Notas: $_nota1, $_nota2 | Média: ${calcularMedia()} | Situação: ${verificarAprovacao()}");
  }
}