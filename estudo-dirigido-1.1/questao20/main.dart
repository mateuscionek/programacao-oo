import 'pokemon.dart';
import 'treinador.dart';

void main() {
  Pokemon p1 = Pokemon(25, "Alakazan", "Elétrico", 45, 100);
  Pokemon p2 = Pokemon(6, "Charizard", "Fogo", 80, 250);
  Pokemon p3 = Pokemon(1, "Snorlax", "Sono", 15, 60);

  Treinador t = Treinador("Mateus", p1, p2, p3);
  t.exibirTime();
}