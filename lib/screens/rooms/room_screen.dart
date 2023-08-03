import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/screens/common/custom_app_bar.dart';
import 'package:rento/screens/common/custom_navigation_bar.dart';
import 'package:rento/screens/rooms/widgets/create_sheet.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () => print("back"),
        onMenuPressed: () {
          Get.bottomSheet(CreateSheet());
        },
        title: "Room Management",
        isSearchOption: true,
      ),
      bottomNavigationBar: CustomNavigationBar(activeIndex: 1),
    );
  }
}
