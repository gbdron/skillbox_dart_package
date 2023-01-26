import 'package:dart_package/src/admin_user.dart';
import 'package:dart_package/src/user.dart';

class UserManager<T extends User> {
  Set<T> users = {};

  addUser(T user) {
    users.add(user);
  }

  removeUser(T user) {
    users.remove(user);
  }

  getUsers() {
    List result = [];
    users.forEach((element) {
      if (element is AdminUser) {
        result.add(element.getMailSystem());
      } else {
        result.add(element.email);
      }
    });
    return result;
  }
}
