import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:rento/screens/errors/error_404.dart';
import 'package:rento/screens/home/home_screen.dart';
import 'package:rento/screens/test/test_screen.dart';

class RouteHelper {
  static const INIT = "/";
  static const TEST = "/test";
  static const NOT_FOUND = "/not-found";
  // users
  static const USER = "/user";
  static const USER_GET = "/user/:id";
  static const USER_EDIT = "/user-edit/:id";

  static List<GetPage> routes = [
    GetPage(name: RouteHelper.INIT, page: () => HomeScreen()),
    GetPage(name: RouteHelper.TEST, page: () => TestScreen())
  ];

  static GetPage notFound =
      GetPage(name: RouteHelper.NOT_FOUND, page: () => Error404());
}
