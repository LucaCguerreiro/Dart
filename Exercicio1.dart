void main() {
  const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};
  const ordem = ['ovos', 'chocolate'];

  double total = 0;

  for (int i = 0; i < ordem.length; i++) {
    total += boloPrecos[ordem[i]];
  }

  print('Total = $total');
}
