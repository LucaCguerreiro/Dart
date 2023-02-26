import 'dart:math';
import 'dart:io';

void main() {
  // Gera um número aleatório entre 1 e 100
  Random random = new Random();
  int numeroAleatorio = random.nextInt(100) + 1;

  int tentativa;
  do {
    // Lê uma tentativa do usuário
    print("Digite um número entre 1 e 100:");
    tentativa = int.parse(stdin.readLineSync());

    // Verifica se a tentativa está dentro do intervalo permitido
    if (tentativa < 1 || tentativa > 100) {
      print("O número digitado está fora do intervalo permitido.");
    } else {
      // Verifica se a tentativa está correta
      if (tentativa == numeroAleatorio) {
        print("Parabéns! Você acertou o número $numeroAleatorio.");
      } else {
        // Se a tentativa estiver incorreta, informa o novo intervalo permitido
        if (tentativa < numeroAleatorio) {
          print("O número digitado é menor do que o número a ser adivinhado.");
          print("Tente novamente com um número entre $tentativa e 100.");
        } else {
          print("O número digitado é maior do que o número a ser adivinhado.");
          print("Tente novamente com um número entre 1 e $tentativa.");
        }
      }
    }
  } while (tentativa != numeroAleatorio);
}
