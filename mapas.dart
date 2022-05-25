void main() {
  // Relembrando - Lista:
  List<String> lista = ["Vinícius", "Gabriel"];

  // Printa todos os objetos da lista:
  print(lista);

  // Printa o primeiro objeto da lista - "Vinícius"
  // [0] - índice 0
  print(lista[0]);

  //Printa o segundo objeto da lista - "Gabriel"
  // [1] - índice 1
  print(lista[1]);

  // Mapas:
  // Um mapa tem vários objetos, porém não utiliza-se do índice para trabalhar com eles, e sim de chaves.

  // Entre os objetos do mapa é passado 2 tipos, o tipo da chave e o tipo do valor.
  Map<String, String> mapa = {"firstName":"Vinicius", "lastName":"Rodrigues"};

  print(mapa);
  print(mapa["firstName"]);
  print(mapa["lastName"]);

  // Adicionando valores para dentro de um mapa:

  // Método Put - Faz a inclusão de um objeto.
  mapa.putIfAbsent("fullName", () => "Vinícius Gabriel");

  print(mapa);

  // Adicionando valor - declarando uma chave:
  mapa["birthday"] = "05.01.2001";

  print(mapa);

  // Removendo valores:

  // Método Remove - Remove um objeto através da chave.
  mapa.remove("fullName");
  print(mapa);

  // Atualizando valores - Passa a chave e atualiza o valor:
  mapa["birthday"] = "01.05.2001";

  print(mapa);

  // Método Update - Atualiza o valor.
  mapa.update("birthday", (value) => "05.01.2001");

  print(mapa);
}
