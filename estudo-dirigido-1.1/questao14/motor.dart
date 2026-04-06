class Motor {
  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (this._potencia <= 0) this._potencia = 100;
    if (this._tipo.isEmpty) this._tipo = "Combustão";
  }

  void exibirMotor() => print("Motor: $tipo | Potência: $potencia cv");
}