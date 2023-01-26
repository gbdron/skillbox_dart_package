import 'dart:math';

class BinaryString {
  String intToBinary(int a) {
    String binary = "";

    int mask = 1;
    for (int i = 0; i < 31; i++) {
      if ((mask & a) != 0) {
        binary = "1" + binary;
      } else {
        binary = "0" + binary;
      }
      mask <<= 1;
    }
    return binary;
  }

  int binaryToInt(String binary) {
    int result = 0;
    int indexCounter = 0;
    for (int i = binary.length - 1; i >= 0; i--) {
      if (binary[i] == '1') {
        result += pow(2, indexCounter).toInt();
      }
      indexCounter++;
    }
    return result;
  }
}
