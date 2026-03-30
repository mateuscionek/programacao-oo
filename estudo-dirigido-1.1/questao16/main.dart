import 'personagem.dart';

void main() {
  Personagem jacob = Personagem("Jacob Black", 100, 25);
  Personagem edward = Personagem("Edward Cullen", 120, 20);

  jacob.atacar(edward);
  edward.exibirStatus();
}