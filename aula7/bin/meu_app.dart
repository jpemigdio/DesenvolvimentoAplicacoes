import '../lib/estagiario.dart';
import '../lib/funcionario.dart';
import '../lib/gerente.dart';
import '../lib/vendedor.dart';

// aula 7 - poliformismo (sobescrita ou sobrecarga em cima de um metodo)
void main() {
  Funcionario gerente = Gerente("João Paulo", 5000, "Vendas");
  Funcionario estagiario = Estagiario(
    "Gustavo",
    1200,
    "Engenharia de Software",
  );
  Funcionario vendedor = Vendedor("Lucas", 4000, 12000);

  // chamando metodo da superclasse
  print(gerente.exibirInformacoes());
  print(estagiario.exibirInformacoes());
  print(vendedor.exibirInformacoes());
}
