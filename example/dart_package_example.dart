import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/admin_user.dart';
import 'package:dart_package/src/binary_string.dart';
import 'package:dart_package/src/general_user.dart';
import 'package:dart_package/src/nth_root.dart';
import 'package:dart_package/src/point.dart';
import 'package:dart_package/src/string_map.dart';
import 'package:dart_package/src/string_numbers.dart';
import 'package:dart_package/src/string_set.dart';
import 'package:dart_package/src/user_manager.dart';

void main() {
  var calc = DelimetersCalculator();
  print(calc.prime(12));

  var bin = BinaryString();
  print(bin.intToBinary(3435532));
  print(bin.intToBinary(-3435532));
  print(bin.intToBinary(4));
  print(bin.intToBinary(-4));
  print(bin.binaryToInt('1111111110010111001001111110100'));
  print(bin.binaryToInt('00000000011010001101100000011000'));

  print(3435532 == bin.binaryToInt(bin.intToBinary(3435532)));
  print(-3435532 == bin.binaryToInt(bin.intToBinary(-3435532)));

  var strNum = StringNumbers();
  print(strNum.strToNumbers('2 ad3sf  3 dsf 4 afds 5'));

  var strMap = StringMap();
  print(strMap.strToMap('aa  b  c aa b c aa b c d'));

  var strSet = StringSet();
  print(strSet
      .strToSet(['one', 'cat', 'dog', 'one', 'two', 'three', 'zero', 'zero']));

  var point1 = Point.getInitialPoint();
  var point2 = Point.getUnitVector();
  var point3 = Point(2, -5, 7);
  var point4 = Point(3, 4, 5);
  print(point1.distanceTo(point2).toStringAsFixed(4));
  print(point3.distanceTo(point4).toStringAsFixed(4));

  num number = 19;
  print(number.getNthRoot(3).toStringAsFixed(4));

  var admin = AdminUser('admin@mail.ru');
  var general = GeneralUser('general@mail.ru');
  var userMgr = UserManager();
  print(admin.getMailSystem());
  userMgr.addUser(admin);
  userMgr.addUser(general);
  print(userMgr.getUsers());
  userMgr.removeUser(admin);
  print(userMgr.getUsers());
}
