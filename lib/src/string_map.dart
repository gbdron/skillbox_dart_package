class StringMap {
  Map strToMap(String str) {
    final list = str.split(RegExp(r'\s+'));
    var map = Map();

    list.forEach((element) {
      if (!map.containsKey(element)) {
        map[element] = 1;
      } else {
        map[element] += 1;
      }
    });
    return map;
  }
}
