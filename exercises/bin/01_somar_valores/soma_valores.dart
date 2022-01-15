import 'dart:io';

void main(List<String> arguments) {
  somaValores();
}

void somaValores() {
  List<double> valores = [];

  for (int i = 1; i <= 2; i++) {
    print("digite o $i valor");
    double entrada = double.parse(stdin.readLineSync() ?? '0.0');
    valores.add(entrada);
  }
  print(valores.reduce((n1, n2) => n1 + n2));
}
