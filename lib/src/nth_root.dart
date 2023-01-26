extension NthRoot on num {
  num getNthRoot(int power) {
    num eps = 1e-1;
    num prevY, nextY;

    if (this < 0 && power % 2 == 0) {
      throw ArgumentError(
          'Root of an even degree does not exist for negative numbers');
    }

    nextY = this;
    do {
      prevY = nextY;
      nextY = (prevY * (power - 1) + this / pow(prevY, power - 1)) / power;
    } while ((nextY - prevY).abs() > eps);
    return nextY;
  }

  num pow(num x, int n) {
    num pow = 1;

    for (int i = 0; i < n; i++) {
      pow = pow * x;
    }
    return pow;
  }
}
