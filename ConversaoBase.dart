import 'dart:math';

void main() {
  final random = Random();

  final list = List.generate(15, (_) => random.nextInt(5001));
  imprimirNumeroOrdemCrescente(list);
}

void imprimirNumeroOrdemCrescente(List<int> list) {
  list.sort();

  list.forEach((numero) {
    print("Decimal: $numero, "
        "Binário: ${converterParaBinario(numero)}, "
        "Octal: ${converterParaOctal(numero)}, "
        "Hexadecimal: ${converterParaHexadecimal(numero)}");
  });
}

String converterParaBinario(int numero) => numero.toRadixString(2);

String converterParaOctal(int numero) => numero.toRadixString(8);

String converterParaHexadecimal(int numero) => numero.toRadixString(16);
