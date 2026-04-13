import 'conta.dart';  

void main(){
  Conta c1= Conta.bancaria ('01', 'Mateus');
  Conta c2= Conta.vip ('02', 'Renata',2000);

  print(' Conta bancaria');
  c1.exibirResumo();

  c1.depositar(500);
  c1.exibirResumo();

  c1.sacar(200);
  c1.exibirResumo();

  print(' Conta vip');
  c2.exibirResumo();

  c2.sacar(2500);
  c2.exibirResumo();


}