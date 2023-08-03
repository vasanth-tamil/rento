import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rento/screens/errors/error_screen.dart';
import 'package:rento/screens/home/home_screen.dart';
import 'package:rento/screens/rooms/room_screen.dart';
import 'package:rento/screens/test/test_screen.dart';

class RouteHelper {
  static const INIT = "/";
  static const TEST = "/test";
  static const ERROR = "/error";

  // rooms
  static const ROOM = "/room";
  static const ROOM_GET = "/room/:id";
  static const ROOM_EDIT = "/room-edit/:id";

  // users
  static const USER = "/user";
  static const USER_GET = "/user/:id";
  static const USER_EDIT = "/user-edit/:id";

  // problems
  static const PROBLEM = "/problem";
  static const PROBLEM_GET = "/problem/:id";
  static const PROBLEM_EDIT = "/problem-edit/:id";

  // transactions
  static const TRANSACTION = "/transaction";
  static const TRANSACTION_GET = "/transaction/:id";
  static const TRANSACTION_EDIT = "/transaction-edit/:id";

  static List<GetPage> routes = [
    GetPage(name: RouteHelper.INIT, page: () => HomeScreen()),
    GetPage(name: RouteHelper.TEST, page: () => TestScreen()),
    GetPage(name: RouteHelper.ROOM, page: () => RoomScreen()),
    GetPage(name: RouteHelper.ERROR, page: () => const ErrorScreen()),
  ];

  static GetPage error = GetPage(
    name: RouteHelper.ERROR,
    page: () => const ErrorScreen(),
  );
}
