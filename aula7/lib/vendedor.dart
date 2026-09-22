import 'funcionario.dart';
import 'bonificavel.dart';

class Vendedor extends Funcionario implements Bonificavel {
  double _metaVendas = 0;

  //Criação do construtor
  Vendedor(String nome, double salario, double metaVendas)
    : super(nome, salario){ // em dart, o super (chama o construtor da classe pai) é inserido antes das chaves
    this.metaVendas = metaVendas;
  } 

  //Implementação da interface
  @override
  double calcularBonificacao() {
    return salario * 0.02;
  }

  //Getters
  double get metaVendas => _metaVendas;

  //Setters
  set metaVendas(double novaMetaVendas) {
    if (novaMetaVendas < 0) {
      throw ArgumentError("Meta não pode ser menor que zero");
    }

    _metaVendas = novaMetaVendas;
  }

  @override
  String exibirInformacoes() {
    return super.exibirInformacoes() + ", Meta Vendas: R\$ $metaVendas "+", Bonificação: ${calcularBonificacao()}";
  }
}
