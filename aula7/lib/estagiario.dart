import 'funcionario.dart';

class Estagiario extends Funcionario {
  String _curso = "";

  Estagiario(String nome, double salario, String curso) : super(nome, salario) {
    this.curso = curso;
  }

  //Getters
  String get curso => _curso;

  //Setters
  set curso(String novoCurso) {
    if (novoCurso.trim().isEmpty) {
      throw ArgumentError("O curso está vazio");
    }

    _curso = novoCurso;
  }

  //sobescrevendo o metodo
  @override
  String exibirInformacoes() {
    return super.exibirInformacoes() + ", Curso: $curso";
  }
}
