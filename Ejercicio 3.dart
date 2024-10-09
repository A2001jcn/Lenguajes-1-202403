void main() {
  int n = 15; 
  List<int> fibonacci = [];

  for (int i = 0; i < n; i++) {
    if (i == 0) {
      fibonacci.add(0); 
    } else if (i == 1) {
      fibonacci.add(1); 
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }
  print("Serie de Fibonacci de $n términos: $fibonacci");
}