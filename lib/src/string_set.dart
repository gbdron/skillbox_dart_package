class StringSet {
  Set strToSet(List<String> str) {
    final digits = <String, int>{
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };
    Set result = {};

    str.forEach((element) {
      if (digits.containsKey(element)) {
        result.add(digits[element]);
      }
    });
    return result;
  }
}
