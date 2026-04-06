class Musica {
  String _titulo;
  String _artista;
  int _duracaoSegundos;

  Musica(this._titulo, this._artista, this._duracaoSegundos) {
    if (this._duracaoSegundos <= 0) this._duracaoSegundos = 180;
  }
}