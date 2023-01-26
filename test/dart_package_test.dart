import 'package:dart_package/dart_package.dart';
import 'package:dart_package/src/admin_user.dart';
import 'package:dart_package/src/general_user.dart';
import 'package:dart_package/src/binary_string.dart';
import 'package:dart_package/src/nth_root.dart';
import 'package:dart_package/src/point.dart';
import 'package:dart_package/src/string_map.dart';
import 'package:dart_package/src/string_numbers.dart';
import 'package:dart_package/src/string_set.dart';
import 'package:dart_package/src/user_manager.dart';
import 'package:test/test.dart';

void main() {
  group('Tests for:', () {
    final calc = DelimetersCalculator();
    final bin = BinaryString();
    final strNum = StringNumbers();
    final strMap = StringMap();
    final strSet = StringSet();
    final point1 = Point.getInitialPoint();
    final point2 = Point.getUnitVector();
    final point3 = Point(2, -5, 7);
    final point4 = Point(3, 4, 5);
    final num number = 19;
    final admin = AdminUser('admin@mail.ru');
    final general = GeneralUser('general@mail.ru');
    final userMgr = UserManager();

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

    test('4. String Map', () {
      expect(strMap.strToMap('aa  b  c aa b c aa b c d'),
          {'aa': 3, 'b': 3, 'c': 3, 'd': 1});
    });

    test('5. String Set', () {
      expect(
          strSet.strToSet(
              ['one', 'cat', 'dog', 'one', 'two', 'three', 'zero', 'zero']),
          {1, 2, 3, 0});
    });

    test('6. Point', () {
      expect(point1.distanceTo(point2).toStringAsFixed(4),
          1.7321.toStringAsFixed(4));
      expect(point3.distanceTo(point4).toStringAsFixed(4),
          9.2736.toStringAsFixed(4));
    });

    test('7. Nth Root', () {
      expect(
          number.getNthRoot(3).toStringAsFixed(4), 2.6694.toStringAsFixed(4));
    });

    test('8. Users', () {
      expect(admin.getMailSystem(), 'mail.ru');
      userMgr.addUser(admin);
      userMgr.addUser(general);
      userMgr.addUser(general);
      userMgr.getUsers();
      expect(userMgr.getUsers(), ['mail.ru', 'general@mail.ru']);
      userMgr.removeUser(admin);
      expect(userMgr.getUsers(), ['general@mail.ru']);
    });
  });
}
