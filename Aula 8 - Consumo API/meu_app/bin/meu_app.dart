import 'package:http/http.dart';

void main() {
  requestDataAsync();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/jpemigdio/b189e0eef7a08318a9901ba109947728/raw/3893c943cfbde1ac24f6c4925cb963dd38f077c0/filmes.json";
  print(get(Uri.parse(url))); //converter para o uri
  Future<Response> filmes = get(Uri.parse(url)); // faz a requisicao ao servidor
  print(filmes);

  filmes.then((Response response) {
    print(response);
    print(response.body);
  });
  print("Ultimo código");
}

//O código é lido linha a linha - Sincrona
requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/jpemigdio/b189e0eef7a08318a9901ba109947728/raw/3893c943cfbde1ac24f6c4925cb963dd38f077c0/filmes.json";
  get(Uri.parse(url));

  Response response = await get(
    Uri.parse(url),
  ); //aguarda a resposta da aquisição

  print(response.body);
  print("Ultimo código");
}
