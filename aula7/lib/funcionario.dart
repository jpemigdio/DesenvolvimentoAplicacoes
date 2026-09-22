abstract class Funcionario {
  //classe pai é abstrata, no nosso caso seria a funcionário
  String _nome = ""; //executado em tempo de execução
  double _salario = 0;

  //Construtor
  Funcionario(String nome, double salario) {
    this.nome = nome;
    this.salario =
        salario; //tirando o underline a gente esta acessando pelo setters
  }

  //Getters
  String get nome => _nome;

  double get salario => _salario;

  //Setters
  //podemos aplicar regras e fazendo a validação
  set nome(String novoNome) {
    if (novoNome.trim().isEmpty) {
      //trim verifica se tem
      throw ArgumentError("O nome não pode estar vazio");
    }
    _nome = novoNome;
  }

  set salario(double novoSalario) {
    if (novoSalario < 0) {
      throw ArgumentError("O salário deve ser maior que zero");
    }
    _salario = novoSalario;
  }

  //Exibir informação do funcionario
  String exibirInformacoes() {
    return ("Nome: $nome, Salario: R\$ $salario");
  }
}
