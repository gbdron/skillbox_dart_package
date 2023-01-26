import 'package:dart_package/src/user.dart';

mixin MailSystem on User {
  String getMailSystem() {
    return email.substring(email.indexOf('@') + 1);
  }
}

class AdminUser extends User with MailSystem {
  AdminUser(String email) : super(email);
}
