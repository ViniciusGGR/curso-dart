void main() async {
  // Future, Async e Await
  String name = "Vinícius";
  Future<String> cepFuture = getCepByName("Lago sul");
  late String cep;
  
  cep = await cepFuture;

  print(cep);
}

// External service
Future<String> getCepByName(String validateCep) {
  // Simulando requisição
  return Future.value("00000-000");
}