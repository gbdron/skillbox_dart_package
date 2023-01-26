import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/binary_string.dart';

void main() {
  var calc = DelimetersCalculator();
  print(calc.prime(12));

  var bin = BinaryString();
  print(bin.intToBinary(3435532));
  print(bin.binaryToInt('0000000001101000110110000001100'));
}
