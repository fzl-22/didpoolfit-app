import 'package:didpoolfit/global/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersProvider extends StateNotifier<List<User>> {
  UsersProvider() : super([]);

  void createUser(User newUser) {
    state = [newUser, ...state];
  }
}

final usersProvider = StateNotifierProvider<UsersProvider, List<User>>(
  (ref) => UsersProvider(),
);
