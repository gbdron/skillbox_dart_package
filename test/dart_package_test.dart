import 'package:dart_package/dart_package.dart';
import 'package:test/test.dart';

void main() {
  group('Tests for', () {
    final calc = DelimetersCalculator();

    test('DelimetersCalculator', () {
      expect(calc.gcd(15, 20), 5);
      expect(calc.gcd(12, 30), 6);
      expect(calc.lcm(3, 4), 12);
      expect(calc.prime(12), [1, 2, 2, 3]);
    });
  });
}
