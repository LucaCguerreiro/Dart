import 'dart:io';

void main() {
  List<int> list1 = lerListaOrdenada();
  List<int> list2 = lerListaOrdenada();
  List<int> list3 = gerarListaOrdenada(list1, list2);

  print('Lista 1: $list1');
  print('Lista 2: $list2');
  print('Lista intercalada: $list3');
}

List<int> lerListaOrdenada() {
  print('Digite o tamanho da lista:');
  int tamanho = int.parse(stdin.readLineSync()!);
  List<int> lista = [];

  for (int i = 0; i < tamanho; i++) {
    print('Digite o ${i + 1}º elemento da lista:');
    int elemento = int.parse(stdin.readLineSync()!);
    lista.add(elemento);
  }

  lista.sort();
  return lista;
}

List<int> gerarListaOrdenada(List<int> lista1, List<int> lista2) {
  List<int> lista3 = [];
  int i = 0;
  int j = 0;

  while (i < lista1.length && j < lista2.length) {
    if (lista1[i] < lista2[j]) {
      lista3.add(lista1[i]);
      i++;
    } else {
      lista3.add(lista2[j]);
      j++;
    }
  }

  while (i < lista1.length) {
    lista3.add(lista1[i]);
    i++;
  }

  while (j < lista2.length) {
    lista3.add(lista2[j]);
    j++;
  }

  return lista3;
}
