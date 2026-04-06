import 'motor.dart';

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (this._modelo.isEmpty) this._modelo = "Modelo Padrão";
  }

  void exibirCarro() {
    print("Carro: ${_modelo}");
    _motor.exibirMotor();
    print("---");
  }
}