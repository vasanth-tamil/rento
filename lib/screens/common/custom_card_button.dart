import 'package:flutter/material.dart';
import 'package:rento/helpers/constant.dart';

class CustomCardButton extends StatelessWidget {
  String title, description;
  dynamic onPressed;
  CustomCardButton(
      {required this.title,
      required this.description,
      required onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor.withOpacity(0.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: Style.FONT_SIZE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
