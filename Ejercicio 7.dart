void main() {
  List<int> numeros = [1, 12, 15, 99, 22];

  int nMenor = encontrarNMenor(numeros);
  print("El número más pequenio es: $nMenor");
}

int encontrarNMenor(List<int> lista) {
  int menor = lista[0];
  for (int i = 1; i < lista.length; i++) {
    if (lista[i] < menor) {
      menor = lista[i]; 
    }
  }

  return menor; 
}