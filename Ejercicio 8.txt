void main() {
  int numero = 5; 
  int resultado = factorial(numero);
  print("El factorial de $numero es: $resultado");
}
int factorial(int num) {
  if (num == 0 || num == 1) {
    return 1;
  }
  int resultadoF = 1;
  for (int i = 2; i <= num; i++) {
    resultadoF = multiplicar(resultadoF, i);
  }
  return resultadoF;
}
int multiplicar(int a, int b) {
  int total = 0;
  for (int i = 0; i < b; i++) {
    total += a;
  }

  return total; 
}