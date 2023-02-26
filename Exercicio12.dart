import 'dart:io';

void main() {
  stdout.write("Digite um número qualquer: ");
  int num = int.parse(stdin.readLineSync()!);

  int numInvertido = 0;
  while (num > 0) {
    int digito = num % 10;
    numInvertido = numInvertido * 10 + digito;
    num = (num / 10).floor();
  }

  print("Numero invertido: ${numInvertido}");
}
