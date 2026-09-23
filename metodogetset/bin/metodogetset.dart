import 'package:metodogetset/metodogetset.dart';

void main() {
  try {
    Produto camisa = Produto("Calça preta estilo barrel", 150, 60);
    print(camisa.nome);
    print(camisa.valor);
    print(camisa.quantidade);

    camisa.nome = "Camisa Duquesa M";
    camisa.valor = 90;
    camisa.quantidade = 23;

    //Utilizando setters para alterar o valor
    print(camisa.nome);
    print(camisa.valor);
    print(camisa.quantidade);
  } catch (erro) {
    print(erro);
  }
}
