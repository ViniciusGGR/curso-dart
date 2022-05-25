void main() async {
  // Future, Async e Await
  String name = "Vinícius";
  Future<String> cepFuture = getCepByName("Lago sul");
  late String cep;

  // cepFuture.then((result) => cep = result);
  
  cep = await cepFuture;

  print(cep);
}

// External service
Future<String> getCepByName(String validateCep) {
  return Future.value("00000-000");
}