class Musica {
  String titulo;
  String artista;
  int duracaoSegundos;

  Musica(this.titulo, this.artista, this.duracaoSegundos) {
    if (this.duracaoSegundos <= 0) this.duracaoSegundos = 180;
  }
}