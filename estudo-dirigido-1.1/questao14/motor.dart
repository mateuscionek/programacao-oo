class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (this.potencia <= 0) this.potencia = 100;
    if (this.tipo.isEmpty) this.tipo = "Combustão";
  }

  void exibirMotor() => print("Motor: $tipo | Potência: $potencia cv");
}