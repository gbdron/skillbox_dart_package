class StringNumbers {
  List<num> strToNumbers(String str) {
    List<num> result = [];

    str.split(' ').forEach((element) {
      if (num.tryParse(element) != null) {
        result.add(num.parse(element));
      }
    });
    return result;
  }
}
