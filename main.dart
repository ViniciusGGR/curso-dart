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

    // Estruturas de repetição:
    for(int i = 1; i <= 10; i++) {
      print("${i} x 2 = ${i * 2}");
    }

    // No while é importante ter uma condição de parada, isso garante que a aplicação não entre em um loop infinito.
    int counter = 10;
    
    while(counter != 30) {
      counter = counter + 1;
      print("Loop -> ${counter}");  
    }

    // A classe "Smartphone" é um tipo de objeto composto.
    // () - Atributos da classe "Smartphone".
    Smartphone mySmartphone = Smartphone("Gray", 8, 5.7, 0.550);
    Smartphone otherSmartphone = Smartphone("Black", 6, 5.0, 0.475);

    print(mySmartphone.toString());
    print(otherSmartphone.toString());

    double result = otherSmartphone.valueSmartphone(1000);
    print(result);

    // Objetos "mercedes", "bmw":
    Car mercedes = Car("Mercedes");
    Car bmw = Car("BMW");

    // Acessando o valor de um objeto
    mercedes.model;
    print(mercedes.model);

    // A class Son está herdando a caracteristica speak da classe Father:
    Son paul = Son();
    paul.speak();

    Payment paying = PayDebitCard();
    paying.pay();

    paying = PayCreditCard();
    paying.pay();
}

// Polimorfismo:
abstract class Payment {
  // Ação de pagar.
  void pay();
}

// Primeira forma de pagamento:
class PayCreditCard implements Payment {
  void pay() {
    print("Pagando com cartão de crédito.");
  }
}

// Segunda forma de pagamento:
class PayDebitCard implements Payment {
  void pay() {
    print("Pagando com cartão de débito.");
  }
}

// Herança:
class Father {
  String speak() {
    return "Olá pessoal";
  }
}

// Herda caracteristicas da Classe Father:
class Son extends Father {

}

// Interface/abstract class:
abstract class Person {
  // Não é feito a implementação desse atributo.
  String toCommunicate();
}

class FirstPerson implements Person {
  // Tem que ser implementado o atributo definido na abstract class acima.
  String toCommunicate() {
    return "Olá, Mundo";
  }
}

class SecondPerson implements Person {
  String toCommunicate() {
    return "Bom dia!";
  }
}

// Classe "Car":
class Car {
  final String model;

  // Variável Privada:
  String _secret = "Muito dinheiro";

  int _valueCar = 1000;
  // Variável pública com o get, mas não permite a atribuição de novos valores.
  int get priceCar => _valueCar;

  // Permite a alteração de valor.
  void setValue(int valueCar) => _valueCar = valueCar;

  Car(this.model);
}

// Criando uma classe:
class Smartphone {
  // Uma classe representa um objeto do mundo real.

  // Objetos do tipo final - O construtor passa a ter a Responsabilidade de definir os valores.

  // Atributos da Classe Smartphone:
  final String color;
  final int processor;

  // double - Tipo de variável para trabalhar com valores que tem casas decimais
  final double size;
  final double weight;

  // Construtor - Parte da classe que sabe criar a partir dos atributos da classe.

  // this - Palavra reservada que acessa os atributos da classe.
  //Construtor:
  Smartphone(this.color, this.processor, this.size, this.weight);

  // Método toString - Retorna os atributos/caracteristicas da classe.
  String toString() {
    return "Cor: $color, Processador: $processor, Tamanho: $size, Peso: $weight";
  }

  // Método para calcular o valor do Smartphone de acordo com o processador:
  double valueSmartphone(double price) {
    return price * processor;
  }
}