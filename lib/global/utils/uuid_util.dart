import 'package:uuid/uuid.dart';

class UuidUtil{
  String getUid(){
    return const Uuid().v4();
  }
}