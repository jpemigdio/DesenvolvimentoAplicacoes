import 'package:dotenv/dotenv.dart';
import 'package:supabase/supabase.dart';

//Função Conexão entre o dart e o Supabase
SupabaseClient conexao() {
  final env = DotEnv()..load();
  final url = env['SUPABASE_URL'] ?? '';
  final chave = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

  if (url.isEmpty || chave.isEmpty) {
    throw StateError("Preencha a URL e a Chave");
  }
  print("FOI");
  return SupabaseClient(url, chave);
}
