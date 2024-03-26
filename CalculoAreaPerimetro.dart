import 'dart:math';

void main() {
  final random = Random();

  final list = List.generate(10, (_) => random.nextDouble() * 100 + 1);

  list.forEach((numero) {
    final areaCirculo = calcularAreaCirculo(numero);
    final perimetroCirculo = calcularPerimetroCirculo(numero);

    print("Raio: ${numero.toStringAsFixed(2)}, "
        "Área: ${areaCirculo.toStringAsFixed(2)}, "
        "Perímetro: ${perimetroCirculo.toStringAsFixed(2)}");
  });
}

double calcularAreaCirculo(double raio) => pi * raio * raio;

double calcularPerimetroCirculo(double raio) => 2 * pi * raio;
