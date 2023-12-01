import 'dart:math';

import 'package:santa/infastructure/core/enum.dart';

String getInitials(String fullName) {
  List<String> nameParts = fullName.split(' ');
  String initials = '';

  for (String part in nameParts) {
    if (part.isNotEmpty) {
      initials += part[0];
    }
  }

  return initials;
}



String generateId() {
  const String charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  Random random = Random();

  List<String> idList =
      List.generate(10, (index) => charset[random.nextInt(charset.length)]);

  return idList.join();
}



