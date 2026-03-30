import 'musica.dart';

class Playlist {
  String nome;
  Musica m1, m2, m3;

  Playlist(this.nome, this.m1, this.m2, this.m3) {
    if (this.nome.isEmpty) this.nome = "Minha Playlist";
  }

  int calcularDuracaoTotal() => m1.duracaoSegundos + m2.duracaoSegundos + m3.duracaoSegundos;

  void exibirPlaylist() => print("Playlist: $nome | Duração: ${calcularDuracaoTotal()} seg");
}