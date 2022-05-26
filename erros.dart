void main() {

  try { // Tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e) { // Capturar a falha
    // print(e); // Printa a mensagem de erro padrão
    print("Deu erro na aplicação $e");
    // print(stackStrace); // stackStrace - Pilha de erro

    // Propagando um erro
    // rethrow;

    throw Exception("Ocorreu um erro inesperado"); // Retorna um novo erro
    
  }

  

}