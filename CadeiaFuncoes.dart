import 'dart:math';

void main() {
  final resultadoAcomB = funcaoA(funcaoB);
  final resultadoAcomC = funcaoA(funcaoC);

  print("Resultado A(B): $resultadoAcomB");
  print("Resultado A(C): $resultadoAcomC");
}

int funcaoA(int Function(int) funcao) {
  final random = Random();
  final numeroAleatorio = random.nextInt(101);
  final numeroAleatorio2 = random.nextInt(101);

  final resultado1 = funcao(numeroAleatorio);
  final resultado2 = funcao(numeroAleatorio2);
  return resultado1 + resultado2;
}

int funcaoB(int numero) {
  return numero * numero;
}

int funcaoC(int numero) {
  return numero * 2;
}
