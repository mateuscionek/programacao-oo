class Data {
  int _dia = 1;
  int _mes = 1;
  int _ano = 2024;

  Data(int dia, int mes, int ano) {
    if (dia >= 1 && dia <= 31) _dia = dia;
    if (mes >= 1 && mes <= 12) _mes = mes;
    if (ano > 0) _ano = ano;
  }

  void exibirData() {
    print("Data: $_dia/$_mes/$_ano");
  }
}