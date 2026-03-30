import 'musica.dart';
import 'playlist.dart';

void main() {
  Musica m1 = Musica("Decode", "Paramore", 261);
  Musica m2 = Musica("Flightless Bird", "Iron & Wine", 240);
  Musica m3 = Musica("Supermassive Black Hole", "Muse", 209);

  Playlist p = Playlist("Trilha Sonora", m1, m2, m3);
  p.exibirPlaylist();
}