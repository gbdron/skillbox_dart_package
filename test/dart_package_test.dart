import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/binary_string.dart';
import 'package:dart_package/src/string_numbers.dart';
import 'package:test/test.dart';

void main() {
  group('Tests for:', () {
    final calc = DelimetersCalculator();
    final bin = BinaryString();
    final strNum = StringNumbers();

    test('1. DelimetersCalculator', () {
      expect(calc.gcd(15, 20), 5);
      expect(calc.gcd(12, 30), 6);
      expect(calc.lcm(3, 4), 12);
      expect(calc.prime(12), [1, 2, 2, 3]);
    });

    test('2. Binary String', () {
      expect(bin.intToBinary(3435532), '0000000001101000110110000001100');
      expect(bin.binaryToInt('0000000001101000110110000001100'), 3435532);
    });

    test('3. String Numbers', () {
      expect(strNum.strToNumbers('2 ad3sf 3 dsf 4 afds 5'), [2, 3, 4, 5]);
    });
  });
}
