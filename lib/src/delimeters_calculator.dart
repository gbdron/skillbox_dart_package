class DelimetersCalculator {
  // Нахождение НОД
  int gcd(int a, int b) {
    if (a < b) {
      // swap(a,b)
      a += b;
      b = a - b;
      a -= b;
    }

    while (b != 0) {
      a %= b;
      // swap(a,b)
      a += b;
      b = a - b;
      a -= b;
    }
    return a;
  }

  // Нахождение НОК
  int lcm(int a, int b) {
    // return a * b ~/ gcd(a, b);
    return a ~/ gcd(a, b) * b;
  }

  // Разложение на простые множители
  List<int> prime(int n) {
    int div = 2;
    var result = [1];
    while (n > 1) {
      while (n % div == 0) {
        result.add(div);
        n = n ~/ div;
      }
      if (div == 2) {
        div++;
      } else {
        div += 2;
      }
    }
    return result;
  }
}
