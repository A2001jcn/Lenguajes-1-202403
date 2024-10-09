void main() {
  List<int> lista = [1, 2, 3, 3, 3, 4, 5, 6];
  Set<int> validacionset = Set.from(lista);
  List<int> listaUnica = validacionset.toList();
  print("Lista con elementos unicos: $listaUnica");
}