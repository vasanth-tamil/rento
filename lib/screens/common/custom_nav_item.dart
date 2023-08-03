import 'package:flutter/material.dart';

class CustomNavItem extends StatelessWidget {
  IconData icon;
  String title;
  bool isActive;
  dynamic onTap;

  CustomNavItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color activeColor =
        isActive ? Theme.of(context).primaryColor : Colors.black87;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: activeColor,
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: activeColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
