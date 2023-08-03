import 'package:flutter/material.dart';
import 'package:rento/screens/common/custom_nav_item.dart';

class CustomNavigationBar extends StatelessWidget {
  int activeIndex;
  CustomNavigationBar({required this.activeIndex, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomNavItem(
            icon: Icons.data_saver_off,
            title: "Dashboard",
            isActive: activeIndex == 0 ? true : false,
            onTap: () => print("Dashboard"),
          ),
          CustomNavItem(
            icon: Icons.room_preferences_rounded,
            title: "Rooms",
            isActive: activeIndex == 1 ? true : false,
            onTap: () => print("Rooms"),
          ),
          CustomNavItem(
            icon: Icons.person,
            title: "Users",
            isActive: activeIndex == 2 ? true : false,
            onTap: () => print("Users"),
          ),
          CustomNavItem(
            icon: Icons.monetization_on_rounded,
            title: "Transactions",
            isActive: activeIndex == 3 ? true : false,
            onTap: () => print("Transactions"),
          ),
        ],
      ),
    );
  }
}
