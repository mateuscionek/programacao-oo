import 'funcionario.dart';

void main() {
  Funcionario f1 = Funcionario.estagiario('Mateus');
  Funcionario f2 = Funcionario.pleno('Retana', 3500);
  Funcionario f3 = Funcionario.gerente('Edward', bonus: 1500);

  print(' Estagiario');
  f1.exibirDados();

  print(' Pleno ');
  f2.exibirDados();

  print('Gerente');
  f3.exibirDados();
}

//a Porque cada construtor representa um perfil diferente, deixando o código mais legível e organizado.
//b Cada construtor define valores diferentes para _cargo e _salario.
//c Porque garante que o objeto já nasce com estado válido, sem precisar chamar métodos extras depois.