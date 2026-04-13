class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  set email(String valor) {
    if (valor.isNotEmpty) _email = valor;
  }

  set saldoCarteira(double valor) {
    if (valor >= 0) _saldoCarteira = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void adicionarSaldo(double valor) {
    if (valor > 0) _saldoCarteira += valor;
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    } else {
      print('Saldo insuficiente!');
    }
  }

  void exibirCliente() {
    print('Nome: $_nome');
    print('Email: $_email');
    print('Saldo: $_saldoCarteira');
    print('Ativo: $_ativo');
  }
}

class ListaCliente {
  List<Cliente> _clientes = [];

  void inserir(Cliente cliente) => _clientes.add(cliente);

  void remover(int i) {
    if (i >= 0 && i < _clientes.length) {
      _clientes.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() => _clientes.length;

  Cliente get(int i) {
    if (i >= 0 && i < _clientes.length) return _clientes[i];
    print('Indice invalido!');
    return _clientes[0];
  }

  void exibirLista() {
    for (var c in _clientes) {
      c.exibirCliente();
      print('');
    }
  }
}

class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo);

  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  set preco(double valor) {
    if (valor >= 0) _preco = valor;
  }

  set estoque(int valor) {
    if (valor >= 0) _estoque = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  void reporEstoque(int quantidade) {
    if (quantidade > 0) _estoque += quantidade;
  }

  void retirarEstoque(int quantidade) {
    if (quantidade > 0 && quantidade <= _estoque) {
      _estoque -= quantidade;
    } else {
      print('Estoque insuficiente!');
    }
  }

  void exibirProduto() {
    print('Nome: $_nome');
    print('Preco: $_preco');
    print('Estoque: $_estoque');
    print('Ativo: $_ativo');
  }
}

class ListaProduto {
  List<Produto> _produtos = [];

  void inserir(Produto produto) => _produtos.add(produto);

  void remover(int i) {
    if (i >= 0 && i < _produtos.length) {
      _produtos.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() => _produtos.length;

  Produto get(int i) {
    if (i >= 0 && i < _produtos.length) return _produtos[i];
    print('Indice invalido!');
    return _produtos[0];
  }

  void exibirLista() {
    for (var p in _produtos) {
      p.exibirProduto();
      print('');
    }
  }
}

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade);

  Produto get produto => _produto;
  int get quantidade => _quantidade;

  set quantidade(int valor) {
    if (valor > 0) _quantidade = valor;
  }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    print('Produto: ${_produto.nome}');
    print('Quantidade: $_quantidade');
    print('Subtotal: ${calcularSubtotal()}');
  }
}

class ListaCarrinho {
  List<ItemCarrinho> _itens = [];

  void inserir(ItemCarrinho item) => _itens.add(item);

  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
    } else {
      print('Indice invalido!');
    }
  }

  int tamanho() => _itens.length;

  ItemCarrinho get(int i) {
    if (i >= 0 && i < _itens.length) return _itens[i];
    print('Indice invalido!');
    return _itens[0];
  }

  double calcularTotal() {
    double total = 0;
    for (var item in _itens) {
      total += item.calcularSubtotal();
    }
    return total;
  }

  void exibirLista() {
    for (var item in _itens) {
      item.exibirItem();
      print('');
    }
  }
}

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.inserir(item);
    } else {
      print('Carrinho fechado!');
    }
  }

  void removerItem(int i) {
    if (_aberto) {
      _itens.remover(i);
    } else {
      print('Carrinho fechado!');
    }
  }

  double calcularTotal() => _itens.calcularTotal();

  void exibirCarrinho() {
    print('Cliente: ${_cliente.nome}');
    print('Aberto: $_aberto');
    print('Itens:');
    _itens.exibirLista();
    print('Total: ${calcularTotal()}');
  }
}

class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo);

  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  set codigo(String valor) {
    if (valor.isNotEmpty) _codigo = valor;
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) _percentual = valor;
  }

  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  double calcularDesconto(double valor) => valor * (_percentual / 100);

  void exibirCupom() {
    print('Codigo: $_codigo');
    print('Percentual: $_percentual%');
    print('Ativo: $_ativo');
  }
}

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho, this._cupom) {
    _totalBruto = 0;
    _totalFinal = 0;
    _status = 'aberto';
  }

  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  void fecharPedido() {
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom.ativo) {
      _totalFinal = _totalBruto - _cupom.calcularDesconto(_totalBruto);
    } else {
      _totalFinal = _totalBruto;
    }
    _status = 'fechado';
  }

  void cancelarPedido() => _status = 'cancelado';

  void exibirResumoPedido() {
    print('Numero: $_numero');
    print('Status: $_status');
    print('Total bruto: $_totalBruto');
    print('Total final: $_totalFinal');
    print('Cupom: ${_cupom.codigo}');
  }
}

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos = [];

  Loja(this._nome, this._clientes, this._produtos);

  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  set nome(String valor) {
    if (valor.isNotEmpty) _nome = valor;
  }

  void cadastrarCliente(Cliente cliente) => _clientes.inserir(cliente);
  void cadastrarProduto(Produto produto) => _produtos.inserir(produto);
  void registrarPedido(Pedido pedido) => _pedidos.add(pedido);

  void exibirResumoLoja() {
    print('Loja: $_nome');
    print('Clientes: ${_clientes.tamanho()}');
    print('Produtos: ${_produtos.tamanho()}');
    print('Pedidos: ${_pedidos.length}');
    print('');
    print('Clientes:');
    _clientes.exibirLista();
    print('Produtos:');
    _produtos.exibirLista();
    print('Pedidos:');
    for (var pedido in _pedidos) {
      pedido.exibirResumoPedido();
      print('');
    }
  }
}

void main() {
  ListaCliente listaClientes = ListaCliente();
  ListaProduto listaProdutos = ListaProduto();
  Loja loja = Loja('Minha Loja', listaClientes, listaProdutos);

  Cliente c1 = Cliente('Renata', 'renata@email.com', 500.0, true);
  Cliente c2 = Cliente('Mateus', 'mateus@email.com', 300.0, true);
  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);

  Produto p1 = Produto('Camiseta', 49.90, 10, true);
  Produto p2 = Produto('Calca', 89.90, 5, true);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);

  ItemCarrinho i1 = ItemCarrinho(p1, 2);
  ItemCarrinho i2 = ItemCarrinho(p2, 1);
  ListaCarrinho listaCarrinho = ListaCarrinho();
  Carrinho carrinho = Carrinho(c1, listaCarrinho, true);
  carrinho.adicionarItem(i1);
  carrinho.adicionarItem(i2);

  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);
  Pedido pedido = Pedido('001', carrinho, cupom);
  pedido.fecharPedido();
  loja.registrarPedido(pedido);

  loja.exibirResumoLoja();
}