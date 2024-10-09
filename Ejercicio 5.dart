void main() {
  List<int> n = [5, 2, 9, 1, 2, 9, 8];

  List<int> ordenAsc = ordenar(n, true);
  print("Orden ascendente: $ordenAsc");

  List<int> ordenDesc = ordenar(n, false);
  print("Orden descendente: $ordenDesc");
}

List<int> ordenar(List<int> lista, bool ascendente) {
  if (ascendente) {
    lista.sort(); 
  } else {
    lista.sort((a, b) => b.compareTo(a)); 
  }
  return lista;
}