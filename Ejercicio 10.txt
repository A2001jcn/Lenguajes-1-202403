class Rectangulo {
  double? largo;
  double? ancho;

  Rectangulo({this.largo, this.ancho});
  double calcularArea() {
    if (largo != null && ancho != null) {
      return largo! * ancho!; 
    } else {
      throw Exception("Largo y ancho deben ser mayores que cero."); 
    }
  }
}

void main() {
  Rectangulo rectangulo = Rectangulo(largo: 5.0, ancho: 3.0);

  try {
    double area = rectangulo.calcularArea();
    print("El área del rectángulo es: $area");
  } catch (e) {
    print(e); 
  }
}