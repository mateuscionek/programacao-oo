import 'usuario.dart';

void main(){
  Usuario user1 = Usuario('Renata', 'renata@example.com');
  user1.exibirPerfil();

  Usuario user2 = Usuario('Mateus', 'mateus@example.com', 'Mat');
  user2.exibirPerfil();

  print('user 1:');
  user1.exibirPerfil();
  print('user 2:');
  user2.exibirPerfil();
}