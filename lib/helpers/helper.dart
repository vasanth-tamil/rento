import 'package:uuid/uuid.dart';

class Helper {
  static String uid() => const Uuid().v4().replaceAll('-', '');
}
