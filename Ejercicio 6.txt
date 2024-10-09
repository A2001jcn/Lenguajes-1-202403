void main() {
  
  List<double> n = [5, 2, 9, 1, 2, 9, 8];

  List<double> resultado = Promedio(n);
  print("El promedio es: ${resultado[0]}");
}

List<double> Promedio(List<double> lista) {
  double sumatoria = 0;
  for (int i=0; i<lista.length; i++){
    sumatoria += lista[i];
  }
  double promedio;
  promedio = sumatoria / lista.length;

  return [promedio] ;
}