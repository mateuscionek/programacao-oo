import 'motor.dart';

class Carro {
  String modelo;
  Motor motor;

  Carro(this.modelo, this.motor) {
    if (this.modelo.isEmpty) this.modelo = "Modelo Padrão";
  }

  void exibirCarro() {
    print("Carro: $modelo");
    motor.exibirMotor();
    print("---");
  }
}