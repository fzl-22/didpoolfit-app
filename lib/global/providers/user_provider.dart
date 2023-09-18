import 'package:didpoolfit/global/models/user.dart';
import 'package:didpoolfit/global/providers/program_content_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = Provider<User>((ref) {
  final preferredProgram = ref.read(programContentProvider);
  return User(
    userId: "1234567890",
    fullName: "Ahmad Mu'min Faisal",
    phoneNumber: "0895365037183",
    emailAddress: "contact@aahmadfaisal.online",
    password: "password123",
    gender: "Male",
    dateOfBirth: DateTime(2003, 6, 22),
    bodyWeight: 76.0,
    bodyHeight: 170.0,
    preferredProgram: preferredProgram[0],
  );
});
