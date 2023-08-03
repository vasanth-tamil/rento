import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/route_helper.dart';
import 'package:rento/helpers/theme_helper.dart';

void main() {
  return runApp(
    GetMaterialApp(
      // showPerformanceOverlay: true,
      theme: ThemeHelper.getTheme(false),
      debugShowCheckedModeBanner: false,
      unknownRoute: RouteHelper.error,
      initialRoute: RouteHelper.ROOM,
      getPages: RouteHelper.routes,
    ),
  );
}
