void fib(int n) {
  List<int> sequencia = [1, 1];

  var valor = 2;
  if (n == 1 || n == 2) {
    if (n == 1) {
      print("Sequencia de Fibonacci:${sequencia[n - 1]}");
    } else {
      print("Sequencia de Fibonacci:${sequencia.join(" ")}");
    }
  }
  if (n > 2) {
    while (valor < n) {
      valor = sequencia.last + sequencia[sequencia.length - 2];
      if (valor < n) {
        sequencia.add(valor);
      }
    }
  } else {
    return;
  }

  print("Sequencia de Fibonacci:${sequencia.join(" ")}");
}

void main() {
  fib(1500);
}
