import '../lib/conexao.dart';

main() async {
  final supabase = conexao();
  try {
    final produto = await supabase
        .from("produtos")
        .insert({'nome': 'Computador', 'preco': 150.0, 'quantidade': 16})
        .select()
        .single();
    print(produto);
  } catch (erro) {
    print("ocorreu o seguinte erro $erro");
  } finally {
    await supabase.dispose();
  }
}
