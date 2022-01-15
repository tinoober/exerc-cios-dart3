import 'dart:io';

extension calculadoraBasica on double {
  double mais(double n) {
    return this + n;
  }

  double menos(double n) {
    return this - n;
  }

  double dividido(double n) {
    return this / n;
  }

  double multiplicado(double n) {
    return this * n;
  }
}

void imprimeResultado() {
  List<String> operacoes = ["Adicao", "Subtracao", "Divisao", "Multiplicacao"];

  List<double> numeros = [];
  for (int i = 1; i <= 2; i++) {
    print("digite p $i número");
    double entrada = double.parse(stdin.readLineSync() ?? '0.0');
    numeros.add(entrada);
  }
  print("Digite o nome da operação desejada ${operacoes.join(", ")}");
  String opc = stdin.readLineSync()!;

  switch (opc.toUpperCase()) {
    case "ADICAO":
      {
        print(
            "Resultado de ${numeros[0]} + ${numeros[1]} : ${numeros[0].mais(numeros[1])} ");
      }
      break;

    case "SUBTRACAO":
      {
        print(
            "Resultado de ${numeros[0]} - ${numeros[1]} : ${numeros[0].menos(numeros[1])} ");
      }
      break;

    case "DIVISAO":
      {
        print(
            "Resultado de ${numeros[0]} / ${numeros[1]} : ${numeros[0].dividido(numeros[1])} ");
      }
      break;

    case "MULTIPLICACAO":
      {
        print(
            "Resultado de ${numeros[0]} *  ${numeros[1]} : ${numeros[0].multiplicado(numeros[1]).toStringAsFixed(2)} ");
      }
      break;

    default:
      {
        print("Operação Inválida");
      }
      break;
  }
}

void main() {
  imprimeResultado();
}
