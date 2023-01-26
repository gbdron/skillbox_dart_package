import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/binary_string.dart';
import 'package:dart_package/src/string_map.dart';
import 'package:dart_package/src/string_numbers.dart';

void main() {
  var calc = DelimetersCalculator();
  print(calc.prime(12));

  var bin = BinaryString();
  print(bin.intToBinary(3435532));
  print(bin.binaryToInt('0000000001101000110110000001100'));

  var strNum = StringNumbers();
  print(strNum.strToNumbers('2 ad3sf  3 dsf 4 afds 5'));

  var strMap = StringMap();
  print(strMap.strToMap('aa  b  c aa b c aa b c d'));
}
