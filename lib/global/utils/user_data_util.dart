import 'package:didpoolfit/global/models/user.dart';

class UserDataUtil {
  final User user;

  const UserDataUtil({required this.user});

  String get userName {
    return user.fullName.split(' ').getRange(0, 2).toList().join(' ');
  }

  String get preferredProgramTitle {
    return user.preferredProgram.title;
  }

  String get bodyHeight {
    return "${user.bodyHeight.toInt().toString()}cm";
  }

  String get bodyWeight {
    return "${user.bodyWeight.toInt().toString()}kg";
  }

  String get userAge {
    return "${(DateTime.now().difference(user.dateOfBirth).inDays ~/ 365).toString()}yo";
  }
}
