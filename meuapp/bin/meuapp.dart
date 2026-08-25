import 'package:meuapp/meuapp.dart' as meuapp;

void main(List<String> arguments) {
  // Argumentos Posicionais
  Filme filmes = Filme(
  titulo: "A Odisseia", 
  genero: "Aventura", 
  classificacao: 14, 
  duracao: 145);

  filmes.infoFilme();
}

//Criação das classes (após o void main)

class Filme {
  // Definição dos atributos
  String titulo; // Dart não consegue reconhecer o valor null automaticamente
  String genero; // as aspas são o null na linguagem Dart
  int classificacao;
  int duracao;


  // Criação do Construtor
  Filme({
  required this.titulo, 
  required this.genero, 
  required this.classificacao, 
  required this.duracao
}); 

  // Criar Métodos
  void infoFilme(){
    print("Titulo do filme:  $titulo, Gênero: $genero, Classificação: $classificacao anos e duração de $duracao minutos ");
  }




}


