class StringNumbers {
  List<int> strToNumbers(String str) {
    List<int> result = [];

    str.split(' ').forEach((element) {
      if (int.tryParse(element) != null) {
        result.add(int.parse(element));
      }
    });
    return result;
  }
}
