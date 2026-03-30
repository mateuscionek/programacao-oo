import 'comodo.dart';
import 'casa.dart';

void main() {
  Comodo sala = Comodo("Sala", 20.5);
  Comodo quarto = Comodo("Quarto", 15.0);
  Comodo cozinha = Comodo("Cozinha", 12.0);

  Casa c = Casa("Renata", sala, quarto, cozinha);
  c.exibirCasa();
}