import 'retangulo.dart';

void main() {
  Retangulo r1 = Retangulo(5, 3);
  Retangulo r2 = Retangulo.padrao();
  Retangulo r3 = Retangulo.quadrado(4);

  print(' Retangulo normal ');
  r1.exibirDados();

  print(' Retangulo 1x1 ');
  r2.exibirDados();

  print(' Quadrado lado 4');
  r3.exibirDados();
}