void main() {
  Roupa camisas = Roupa("Camisa", 100, 10);
  //
  camisas.incrementaRoupa(10);
  print(camisas.exibirInfo()); //metodo sempre vinculado ao objeto no main
}

//Criacao da classe

class Roupa {
  String tipo;
  double valor;
  int quantidade;

  // Construtor -> Objeto inicializa com valores
  Roupa(this.tipo, this.valor, this.quantidade);

  //Metodos
  //Adicionar e remover camisas do estoque

  void decrementaRoupa(int quantidade) {
    if (quantidade > 0 && this.quantidade >= quantidade) {
      this.quantidade -= quantidade; // -= proprio resultado tera um decremento
      print("Quantidade retirada");
    } else {
      print("Quantidade inválida");
    }
  }

  void incrementaRoupa(int quantidade) {
    if (quantidade > 0) {
      this.quantidade += quantidade;
      print("Inserido com sucesso");
    } else {
      print("Quantidade inválida");
    }
  }

  double valorTotal() {
    double valorTotal = valor * quantidade;
    return valorTotal;
  }

  //Exibir informacoes

  String exibirInfo() {
    return "Tipo: $tipo\n"
        "Valor: R\$ $valor\n"
        "Quantidade: $quantidade\n"
        "Valor Total: R\$ ${valorTotal()}\n";
  }
}
