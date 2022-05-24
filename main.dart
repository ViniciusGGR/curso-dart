void main() {

    // Variável do Tipo String:
    String name = "Vinícius Gabriel";
    print("Olá, ${name}.");

    // Variável do Tipo Inteiro:
    int value = 05;
    print(value);

    // Variável do Tipo Booleana:
    bool test = true;
    print(test);

    // Lista:
    List<String> listValues = ["Vinícius", "Gabriel"];
    print(listValues[0]);

    // Concatenação para printar os dois valores da lista:
    print("${listValues[0]} - ${listValues[1]}");

    // Variável com valor null:
      // Obs: Importante ter cuidado ao utilizar o ? para atribuir valores nulos, isso pode gerar erros.
    String? surname;
    print(surname);

    // Depois que essa variável receber um valor nunca mais poderá ser null.
    late String nameSurname;
    nameSurname = "Vinícius";
    print(nameSurname);
}