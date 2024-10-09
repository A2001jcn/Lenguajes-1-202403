void main() {
  final List<int> lista = [1, 2, 3, 4, 5];
  int acumulador=0;
  for(int i=0; i<5; i++){
    acumulador += lista[i];
  }
  print(acumulador);
}