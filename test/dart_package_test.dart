import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/binary_string.dart';
import 'package:test/test.dart';

void main() {
  group('Tests for', () {
    final calc = DelimetersCalculator();
    final bin = BinaryString();

    test('DelimetersCalculator', () {
      expect(calc.gcd(15, 20), 5);
      expect(calc.gcd(12, 30), 6);
      expect(calc.lcm(3, 4), 12);
      expect(calc.prime(12), [1, 2, 2, 3]);
    });

    test('Binary String', () {
      expect(bin.intToBinary(3435532), '0000000001101000110110000001100');
      expect(bin.binaryToInt('0000000001101000110110000001100'), 3435532);
    });
  });
}
