void main() {
  List<int>? numeros = [10, 20, 30, 40, 50, 60]; 
  int sumaTotal = sumarElementos(lista: numeros); 
  print("La suma es: $sumaTotal");
}
int sumarElementos({List<int>? lista}) {
  if (lista == null || lista.isEmpty) {
    return 0;
  }
  int suma = 0;
  for (int numero in lista) {
    suma += numero;
  }
  return suma; 
}