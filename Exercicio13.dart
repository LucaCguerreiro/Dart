import 'dart:io';

void main() {
  List<int> conjunto = [];
  int n, num;

  stdout.write("Digite o tamanho do conjunto: ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Digite um número inteiro: ");
    num = int.parse(stdin.readLineSync()!);
    conjunto.add(num);
  }

  Map<int, int> frequencia = {};

  for (int i = 0; i < n; i++) {
    int elemento = conjunto[i];
    if (frequencia.containsKey(elemento)) {
      frequencia[elemento] = frequencia[elemento]! + 1;
    } else {
      frequencia[elemento] = 1;
    }
  }

  print("Elemento | Frequência");
  print("----------------------");

  for (int i = 0; i < n; i++) {
    int elemento = conjunto[i];
    if (frequencia.containsKey(elemento)) {
      print("$elemento       | ${frequencia[elemento]}");
      frequencia.remove(elemento);
    }
  }
}
