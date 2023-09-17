import 'package:didpoolfit/global/models/program.dart';

class User {
  String userId;
  String fullName;
  String phoneNumber;
  String emailAddress;
  String gender;
  DateTime dateOfBirth;
  double bodyWeight;
  double bodyHeight;
  Program preferredProgram;

  User({
    required this.userId,
    required this.fullName,
    required this.phoneNumber,
    required this.emailAddress,
    required this.gender,
    required this.dateOfBirth,
    required this.bodyWeight,
    required this.bodyHeight,
    required this.preferredProgram,
  });
}
