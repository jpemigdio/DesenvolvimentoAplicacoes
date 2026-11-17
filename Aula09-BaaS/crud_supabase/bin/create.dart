import '../lib/conexao.dart';

main() async {
  final supabase = conexao();

  try {
    final produto = await supabase
        .from("produtos")
        .insert({'nome': 'Computador', 'preco': 150.00, 'quantidade': 10})
        .select()
        .single();
    print(produto);
  } catch (erro) {
    print("Ocorreu o seguinte erro: $erro");
  } finally {
    await supabase.dispose();
  }
}
