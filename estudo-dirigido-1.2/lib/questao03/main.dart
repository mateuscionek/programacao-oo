import 'aluno.dart';

void main() {
  Aluno a1 = Aluno('001', 'Renata', 8.5);
  Aluno a2 = Aluno('002', 'Mateus', 5.0);

  a1.exibirBoletim();
  print('');
  a2.exibirBoletim();
}