class Comodo {
  String nome;
  double tamanho;

  Comodo(this.nome, this.tamanho) {
    if (this.tamanho <= 0) this.tamanho = 10.0;
  }
}