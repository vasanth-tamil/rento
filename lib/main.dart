import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/route_helper.dart';
import 'package:rento/helpers/theme_helper.dart';

// git amend problem solving
// https://stackoverflow.com/questions/253055/how-do-i-push-amended-commit-to-the-remote-git-repository

void main() {
  return runApp(
    GetMaterialApp(
      theme: ThemeHelper.getTheme(false),
      debugShowCheckedModeBanner: false,
      unknownRoute: RouteHelper.notFound,
      initialRoute: RouteHelper.TEST,
      getPages: RouteHelper.routes,
    ),
  );
}
