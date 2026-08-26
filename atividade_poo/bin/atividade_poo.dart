import 'package:atividade_poo/atividade_poo.dart' as atividade_poo;

void main() {
  Aluno alunos = Aluno(
    nome: "Roberta",
    idade: 20,
    curso: "ADM",
    nota1: 9.0,
    nota2: 8.0,
  );

  Aluno alunos1 = Aluno(
    nome: "João Paulo Emigdio de Moraes",
    idade: 19,
    curso: "Engenharia de Software",
    nota1: 2.0,
    nota2: 2.0,
  );
  alunos1.infoAluno();
  alunos1.mediaAluno();
  print("---------------------------------------");
  alunos.infoAluno();
  alunos.mediaAluno();
}

// Criação da classe
class Aluno {
  // Criação dos Atributos
  String nome;
  int idade;
  String curso;
  double nota1;
  double nota2;

  //Construtor
  Aluno({
    required this.nome,
    required this.idade,
    required this.curso,
    required this.nota1,
    required this.nota2,
  });

  void infoAluno() {
    print("Nome do aluno: $nome");
    print("Idade do aluno: $idade");
    print("Curso que o aluno está matriculado: $curso");
    print("Primeira nota do aluno: $nota1");
    print("Segunda nota do aluno: $nota2");
  }

  void mediaAluno() {
    if (nota1 + nota2 <= 5) {
      print("Aluno está reprovado");
    } else {
      print("Aluno APROVADO!!");
    }
  }
}
