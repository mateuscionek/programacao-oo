import 'aluno.dart';

void main() {
  List<Aluno> turma = [
    Aluno("Mateus", 8.5, 9.0),
    Aluno("Renata", 9.5, 10.0),
    Aluno("Harry Potter", 4.0, 5.5)
  ];

  for (var aluno in turma) {
    aluno.exibirBoletim();
  }
}