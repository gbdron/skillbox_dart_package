import 'dart:math';

class BinaryString {
  String intToBinary(int a) {
    String binary = '';

    int mask = 1;
    for (int i = 0; i < 31; i++) {
      if ((mask & a) != 0) {
        binary = "1" + binary;
      } else {
        binary = "0" + binary;
      }
      mask <<= 1;
    }

    if (a < 0) {
      binary = "1" + binary;
    } else {
      binary = "0" + binary;
    }

    //remove leading zeros
    return binary.replaceAll(RegExp(r'^0+(?=.)'), '');
  }

  int binaryToInt(String binary) {
    int result = 0;
    int indexCounter = 0;
    int sign = 1;

    if (binary.length == 32) {
      if (binary[0] == '1') {
        sign = -1;
      }
      binary = binary.substring(1);
    }

    for (int i = binary.length - 1; i >= 0; i--) {
      if (binary[indexCounter] == '1') {
        result += pow(2, i).toInt();
      }
      if (indexCounter == 0) {
        result *= sign;
      }
      indexCounter++;
    }
    return result;
  }
}
