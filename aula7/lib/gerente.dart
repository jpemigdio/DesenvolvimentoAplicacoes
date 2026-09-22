import 'funcionario.dart';
import 'bonificavel.dart';

class Gerente extends Funcionario implements Bonificavel {
  String _setor = "";

  //Criação do Construtor
  Gerente(String nome, double salario, String setor) : super(nome, salario) {
    this.setor = setor;
  }

  //Implementação da interface
  @override
  double calcularBonificacao() {
    return salario * 0.05;
  }

  //Getters
  String get setor => _setor;

  //Setters
  set setor(String novoSetor) {
    if (novoSetor.trim().isEmpty) {
      throw ArgumentError("Nome do setor não pode estar vazio");
    }

    _setor = novoSetor;
  }

  @override
  String exibirInformacoes() {
    return super.exibirInformacoes() + ", Setor: $setor "+", Bonificação: ${calcularBonificacao()}";
  }
}
