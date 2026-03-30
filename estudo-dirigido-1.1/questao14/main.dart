import 'motor.dart';
import 'carro.dart';

void main() {
  Motor m1 = Motor(150, "Flex");
  Carro c1 = Carro("Sedan", m1);
  c1.exibirCarro();
}