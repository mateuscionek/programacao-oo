class Produto {
  int _codigo;
  String _nome;
  double _precoUnitario;
  int _quantidade;

  Produto(this._codigo, this._nome, this._precoUnitario, this._quantidade) {
    if (this._codigo <= 0) this._codigo = 1;
    if (this._nome.isEmpty) this._nome = "Sem nome";
    if (this._precoUnitario <= 0) this._precoUnitario = 1.0;
    if (this._quantidade <= 0) this._quantidade = 1;
  }

  void setCodigo(int codigo) { 
    if (codigo > 0) this._codigo = codigo; 
  }
  
  void setNome(String nome) { 
    if (nome.isNotEmpty) this._nome = nome; 
  }
  
  void setPrecoUnitario(double precoUnitario) { 
    if (precoUnitario > 0) this._precoUnitario = precoUnitario; 
  }
  
  void setQuantidade(int quantidade) { 
    if (quantidade > 0) this._quantidade = quantidade; 
  }

  double calcularDesconto() {
    double totalSemDesconto = _precoUnitario * _quantidade;
    if (_quantidade >= 20) return totalSemDesconto * 0.15;
    if (_quantidade >= 10) return totalSemDesconto * 0.10;
    if (_quantidade >= 5) return totalSemDesconto * 0.05;
    return 0.0;
  }

  double calcularTotal() => (_precoUnitario * _quantidade) - calcularDesconto();

  void exibirResumo() {
    print("Produto [$_codigo] $_nome | Qtd: $_quantidade | Preço: R\$ $_precoUnitario");
    print("Desconto: R\$ ${calcularDesconto()} | Total a pagar: R\$ ${calcularTotal()}\n");
  }
}