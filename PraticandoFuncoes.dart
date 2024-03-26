import 'dart:math';

void main() {
  final random = Random();

  final primeiraLista = List.generate(5, (_) => random.nextInt(101));
  final segundaLista = List.generate(5, (_) => random.nextInt(101));

  printList(primeiraLista);
  printList(segundaLista);
  printList(somaLista(primeiraLista, segundaLista));
}

void printList(var lista) => print("Lista: ${lista.join(' , ')}");

List<int> somaLista(List<int> lista, List<int> lista2) {
  List<int> listaSomada = [];
  for (int numero = 0; numero < 5; numero++) {
    print("${lista[numero]}+${lista2[numero]}");
    listaSomada.add(lista[numero] + lista2[numero]);
  }

  return listaSomada;
}
