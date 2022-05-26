void main() {
  BuscarAlunos buscarAlunos = BuscarAlunos();
  buscarAlunos();
}

class BuscarAlunos {
  // Callable Interface
  void call() => print("Vinícius, Gabriel, João");
}