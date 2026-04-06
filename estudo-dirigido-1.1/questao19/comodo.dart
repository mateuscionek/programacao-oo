class Comodo {
  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if (this._tamanho <= 0) this._tamanho = 10.0;
  }
}