class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano) {
    if (this.dia < 1 || this.dia > 31) this.dia = 1;
    if (this.mes < 1 || this.mes > 12) this.mes = 1;
    if (this.ano <= 0) this.ano = 2024;
  }

  void exibirData() {
    String d = dia.toString().padLeft(2, '0');
    String m = mes.toString().padLeft(2, '0');
    String a = ano.toString().padLeft(4, '0');
    print("Data: $d/$m/$a");
  }
}