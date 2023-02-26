import 'dart:io';

void main() {
  List<int> lista1 = lerLista();
  List<int> lista2 = lerLista();
  List<int> lista3 = lerLista();
  List<int> lista4 = lerLista();

  List<int> listaOrdenada = ordenarListas(lista1, lista2, lista3, lista4);
  List<int> listaInterseccao =
      encontrarInterseccao(lista1, lista2, lista3, lista4);

  print('Lista ordenada: $listaOrdenada');
  print('Lista interseção: $listaInterseccao');
}

List<int> lerLista() {
  // Solicita o tamanho da lista ao usuário
  print("Digite o tamanho da lista:");
  int tamanho = int.parse(stdin.readLineSync()!);

  // Lê os valores da lista informados pelo usuário
  List<int> lista = [];
  for (int i = 0; i < tamanho; i++) {
    print("Digite o valor do elemento ${i + 1} da lista:");
    int valor = int.parse(stdin.readLineSync()!);
    lista.add(valor);
  }

  return lista;
}

List<int> ordenarListas(
    List<int> lista1, List<int> lista2, List<int> lista3, List<int> lista4) {
  // Concatena as listas em uma única lista
  List<int> listaConcatenada = [];
  listaConcatenada.addAll(lista1);
  listaConcatenada.addAll(lista2);
  listaConcatenada.addAll(lista3);
  listaConcatenada.addAll(lista4);

  // Ordena a lista concatenada
  listaConcatenada.sort();

  return listaConcatenada;
}

List<int> encontrarInterseccao(
    List<int> lista1, List<int> lista2, List<int> lista3, List<int> lista4) {
  // Cria conjuntos a partir das listas
  Set<int> conjunto1 = Set<int>.from(lista1);
  Set<int> conjunto2 = Set<int>.from(lista2);
  Set<int> conjunto3 = Set<int>.from(lista3);
  Set<int> conjunto4 = Set<int>.from(lista4);

  // Encontra a interseção dos conjuntos
  Set<int> interseccao1e2 = conjunto1.intersection(conjunto2);
  Set<int> interseccao1e2e3 = interseccao1e2.intersection(conjunto3);
  Set<int> interseccao1e2e3e4 = interseccao1e2e3.intersection(conjunto4);

  // Converte o conjunto em uma lista e ordena
  List<int> listaInterseccao = interseccao1e2e3e4.toList();
  listaInterseccao.sort();

  return listaInterseccao;
}
