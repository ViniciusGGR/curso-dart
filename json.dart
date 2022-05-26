import 'dart:convert';

void main() {
  // JSON nada mais é do que uma String

  // String de múltiplas linhas.
  String json = '''
    {
      "User": "vinicius@email.com",
      "Password": 63248439,
      "Permissions": [
        "owner", "admin"
      ]
    }
  ''';
  print(json);

  // Site - "jsonlint.com" faz a validação de um JSON.

  Map resultJson = jsonDecode(json);
  // runtimeType - Mostra o tipo desse objeto
  print(resultJson.runtimeType);
  print(resultJson["User"]);
  print(resultJson["Password"]);
  print(resultJson["Permissions"]);
  print(resultJson["Permissions"][0]);
  print(resultJson["Permissions"][1]);

  // Criando um objeto:
  Map mapa = {
    "name": "Vinícius",
    "pass": 50201,
    "perm": [
      "prop", "ad"
    ]
  };

  print(mapa);

  // Convertendo um objeto em JSON:
  var result = jsonEncode(mapa);
  print(result);
}
