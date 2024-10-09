import 'dart:math'; // Para usar el valor de pi

class Circulo {
  double? radio;
  String? color;
  Circulo({this.radio, this.color});
  double calcularArea() {
    if (radio == null) {
      return 0; 
    }
    return pi * radio! * radio!; 
  }
  double calcularPerimetro() {
    if (radio == null) {
      return 0;
    }
    return 2 * pi * radio!;
  }
}

void main() {
  Circulo miCirculo = Circulo(radio: 5.0, color: "Rojo");

  // Calcular e imprimir el área y el perímetro
  print("Área: ${miCirculo.calcularArea()}");
  print("Perímetro: ${miCirculo.calcularPerimetro()}");
}
