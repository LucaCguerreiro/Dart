import 'dart:io';

void main() {
  // Lê o número de termos
  print("Digite o número de termos:");
  int n = int.parse(stdin.readLineSync()!);

  // Inicializa as variáveis que serão utilizadas na série
  int s1 = 1, s2 = 5, s3 = 100;

  // Imprime os primeiros três termos da série
  stdout.write("$s1 $s2 $s3 ");

  // Itera pelos próximos termos da série
  for (int i = 4; i <= n; i += 3) {
    // Calcula os próximos três termos da série
    s1 *= 2;
    s2 += 5;
    s3 -= 10;

    // Imprime os três termos calculados
    stdout.write("$s1 $s2 $s3 ");
  }

  // Pula uma linha após imprimir todos os termos
  print("");
}
