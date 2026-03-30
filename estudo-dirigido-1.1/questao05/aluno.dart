class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2) {
    if (this.nota1 < 0 || this.nota1 > 10) this.nota1 = 0;
    if (this.nota2 < 0 || this.nota2 > 10) this.nota2 = 0;
  }

  double calcularMedia() => (nota1 + nota2) / 2;

  String verificarAprovacao() => calcularMedia() >= 6.0 ? "Aprovado" : "Reprovado";

  void exibirBoletim() {
    print("Boletim de $nome - Notas: $nota1, $nota2 | Média: ${calcularMedia()} | Situação: ${verificarAprovacao()}");
  }
}