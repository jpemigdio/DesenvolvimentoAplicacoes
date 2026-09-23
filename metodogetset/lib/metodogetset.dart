class Produto {
  String _nome = "";
  double _valor = 0; //o underline na frente significa que os atributos são privados
  int _quantidade = 0;

  //Construtor
  Produto(String nome, double valor, int quantidade) {
    this.nome = nome;
    this.valor = valor;
    this.quantidade = quantidade; //quando retiramos o underline, estamos acessando os getters e setters
  }

  //Getters (Lê o valor)
  String get nome => _nome;

  double get valor => _valor; //usando operador ternario

  int get quantidade => _quantidade;

  //Setters (Altera o valor), interface publica para alterar os atributos privados
  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      //Interrompe o código se o argumento for inválido
      throw ArgumentError("Valor inválido");
    } else {
      _nome = novoNome;
    }
  }

  set valor(double novoValor) {
    if (novoValor < 0) {
      throw ArgumentError("Valor inválido");
    } else {
      _valor = novoValor;
    }
  }

  set quantidade(int novaQuantidade) {
    if (novaQuantidade < 0) {
      throw ArgumentError("Valor inválido");
    } else {
      _quantidade = novaQuantidade;
    }
  }
}
