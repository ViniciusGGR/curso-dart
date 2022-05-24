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
    print("${listValues[0]} ${listValues[1]}");

    // Variável com valor null:
      // Obs: Importante ter cuidado ao utilizar o ? para atribuir valores nulos, isso pode gerar erros.
    String? surname;
    print(surname);

    // Depois que essa variável receber um valor nunca mais poderá ser null.
    late String nameSurname;
    nameSurname = "Vinícius";
    print(nameSurname);

    // Estruturas de controle de fluxo:

    bool moveOn = false;

    if(moveOn) {
      // Verifica se a condição é verdadeira.
      print("Mova-se");
    } else {
      // Verifica se a condição é falsa.
      print("Pare");
    }

    if(10 > 5) {
      print("10 é maior que 5");
    }

    // Uso do Switch para printar um valor.
    int valueInt = 5;

    switch(valueInt) {
      case 0:
        print("ZERO");
        break;
      case 1:
        print("UM");
        break;
      case 2:
        print("DOIS");
        break;

      // Toda vez que os cases não relatarem a condição esperada do valor de entrada, será apresentado o valor default/padrão.
        // Como o default é a última instrução não é necessário o break.
      default:
        print("PADRÃO");
    }
}